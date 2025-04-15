import 'package:final_progicet/view/company.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FinalProgiect());
}

class FinalProgiect extends StatelessWidget {
  const FinalProgiect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CompanyScreen(),
    );
  }
}
