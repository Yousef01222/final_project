import 'package:final_progicet/widget/drop_down_field.dart';
import 'package:final_progicet/widget/header_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedZone = "Banha";
  String? selectedArea;

  final List<String> zones = ["Banha", "Cairo", "Alexandria"];
  final List<String> areas = ["Downtown", "Suburb", "Rural"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderSection(),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownField(
                    label: "Your Zone",
                    value: selectedZone,
                    items: zones,
                    onChanged: (value) {
                      setState(() {
                        selectedZone = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  DropdownField(
                    label: "Your Area",
                    value: selectedArea,
                    hint: "Types of your area",
                    items: areas,
                    onChanged: (value) {
                      setState(() {
                        selectedArea = value;
                      });
                    },
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
