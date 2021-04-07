import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct(
      {this.name, this.description, this.price, this.image, this.star});

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct>
    with SingleTickerProviderStateMixin {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 1; i <= widget.star; i++) {
      childrenstar.add(
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset("assets/img/" + widget.image),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xFF3164bd), const Color(0xFF295cb5)],
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: childrenstar,
                  ),
                  Container(
                    child: Text(
                      "Rp. " + this.widget.price.toString(),
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.lightBlue,
              width: double.infinity,
              // height: double.maxFinite,
              height: 150.0,
              child: Text(widget.description),
            ),
          ],
        ),
      ),
    );
  }
}
