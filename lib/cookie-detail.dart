import 'package:flutter/material.dart';
import 'package:product_card/bottom-bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename, description;

  CookieDetail(
      {this.assetPath, this.cookieprice, this.cookiename, this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pickup',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Cookie',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 400.0, width: 400.0, fit: BoxFit.contain)),
        Center(
          child: Text(cookieprice,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Text(cookiename,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ),
        SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFFF17532)),
                child: Center(
                    child: Text(
                  'Add to cart',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )))),
        SizedBox(
          height: 75,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF17532))),
          ),
        ),
        Center(
          child: Container(
            child: Image.asset(assetPath,
                height: 300.0, width: 300.0, fit: BoxFit.contain),
          ),
        ),
        SizedBox(height: 50.0),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
