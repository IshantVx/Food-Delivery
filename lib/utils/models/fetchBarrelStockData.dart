import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'barrelModel.dart';

class FetchBarrelStock extends StatefulWidget {
  const FetchBarrelStock({super.key});

  @override
  State<FetchBarrelStock> createState() => _FetchBarrelStockState();
}


class _FetchBarrelStockState extends State<FetchBarrelStock> {
  String? selectedStock;


  Future<List<Results>> fetchStockData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final response = await http.get(
      Uri.parse(
          'https://api-barrel.sooritechnology.com.np/api/v1/barrel-app/barrel-stock-analysis?offset=0&limit=20&ordering=-id'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${preferences.getString("accessToken")}',
      },
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final parsed = BarrelModel.fromJson(jsonData);
    return parsed.results!;
    } else {
      log(response.statusCode);
      throw Exception("Failed to fetch data");
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<Results>>(
              future: fetchStockData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text("No data found");
                }

                final stockList = snapshot.data!;

                return DropdownButtonFormField<Results>(
                  // value: selectedStock,
                  hint: Text(selectedStock== null ? "Select Item" : selectedStock!),
                  items: stockList.map((stock) {
                    return DropdownMenuItem(
                      value: stock,
                      child: Text(stock.item!.name!),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedStock = value!.item!.name;
                    });
                    print(
                        "Selected: ${value!.item!.name}, Batch: ${value.batchNo}, Qty: ${value.quantity}");
                  },
                );
              },
            ),
      ),
    );
  }
}
