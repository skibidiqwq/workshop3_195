import 'package:flutter/material.dart';
// import 'screen/home.dart';
import 'screen/item.dart'; // 1. นำเข้าไฟล์ item.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:195"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        // body: const Home(), // 2. คอมเมนต์หน้าเดิมไว้
        body: const Item(),   // 3. เปลี่ยนมาเรียก Item() ตรงนี้
      ),
    );
  }
}