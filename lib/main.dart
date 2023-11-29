import 'package:flutter/material.dart';
import 'package:qr_code/generate_qr_code_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.black54, primarySwatch: Colors.brown),
      home: const GenerateQRCode(),
    );
  }
}