import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  State<MyCurrentLocation> createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
  @override
  void initState() {
    // TODO: implement initState
    getMyCurrentLocation();
    super.initState();
  }
  double latitude = 0.0;
  double longitude = 0.0;
  String currentAddress = "";
  // getting location
  Future<void> getMyCurrentLocation() async {
    bool serviceEnable;
    LocationPermission permission;
    // getting location permission
    serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      // open permission setting location
      await Geolocator.openLocationSettings();
      return;
    }

    //checking permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        await Geolocator.openAppSettings();

        return;
      }

    }

    // if we have permission then we can get location
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    latitude = position.latitude;
    longitude = position.longitude;
    List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
    Placemark place =placemarks[0];
    setState(() {
      currentAddress = " ${place.subLocality}, ${place.locality}, ${place.country}";
    });
    print("Permission requested: $permission");
    print("Location permission: $permission");
    print("Permission: $permission");
    print("Latitude: $latitude, Longitude: $longitude");
    print("Address: $currentAddress");
  }
  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Your Location"),
        content: TextField(
          decoration: InputDecoration(hintText: "Search your location"),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Save"),
          ),
        ],
      ),
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
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          GestureDetector(
            onTap: () {
              openLocationSearchBox(context);
            },
            child: Row(
              children: [
                Text(currentAddress.isEmpty?
                  "Fetching location..." : currentAddress,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
