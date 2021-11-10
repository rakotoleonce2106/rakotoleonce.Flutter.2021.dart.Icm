import 'package:flutter/material.dart';
import 'package:maquete/barometre.dart';
import 'package:maquete/homepage.dart';
import 'package:maquete/pdfView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'h',
      routes: {
        'h': (context) => HomePage(),
        '1': (context) => PdfView(),
        '2': (context) => Barometre()
      },
      title: 'ICM',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
