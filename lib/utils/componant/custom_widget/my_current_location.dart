import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(
        context: context,
        builder: (context)=> AlertDialog(
          title: Text("Your Location"),
          content: TextField(
            decoration: InputDecoration(
              hintText: "Search your location",

            ),
          ),
          actions: [
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary
            ),
          ),
          GestureDetector(
            onTap: (){
              openLocationSearchBox(context);
            },
            child: Row(
              children: [
                Text(
                    "Nepalgunj, banke",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold
                    )
                ),
                Icon(Icons.arrow_drop_down, color: Theme.of(context).colorScheme.primary,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
