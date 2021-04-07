import 'package:flutter/material.dart';

class ProdukList extends StatefulWidget {
  @override
  _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProdukList"),
      ),
      body: Center(
        child: Text("ProdukList"),
      ),
    );
  }
}
