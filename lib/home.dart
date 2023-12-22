import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/"),
          ),
        ),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Center(
          child: GestureDetector(
            onTap: () {
              showCountryPicker(context: context, onSelect: (Country value) {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: const Center(child: Text("Pick A Country", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500))),
            ),
          ),
        ),
      ),
    );
  }
}
