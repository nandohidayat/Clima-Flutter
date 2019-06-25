import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

Location location = Location();

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    await location.getCurrentLocation();
    print('${location.latitude} ${location.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
