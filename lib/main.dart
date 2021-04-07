import 'package:flutter/material.dart';
import 'package:latihan_drawer/beranda.dart' as beranda;
import 'package:latihan_drawer/produk_list.dart' as produk;

void main() {
  runApp(MaterialApp(
    title: "Latihan Drawer",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          beranda.Beranda(),
          produk.ProdukList(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
    );
  }
}
