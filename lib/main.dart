import 'package:flutter/material.dart';
import 'home_page.dart'; // HomePage dosyasını ekledik

void main() {
  runApp(ArtHiveApp());
}

class ArtHiveApp extends StatelessWidget {
  const ArtHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art Hive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // HomePage artık tanımlı
    );
  }
}
