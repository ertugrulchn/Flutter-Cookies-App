import 'package:flutter/material.dart';
import 'package:product_card/bottom-bar.dart';
import 'package:product_card/cookie-page.dart';
import 'package:product_card/ice-cream-page.dart';
import 'package:product_card/cake-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        // ignore: missing_required_param
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: Text(
          'Pickup',
          style: TextStyle(
              fontFamily: 'Schyler', fontSize: 20.0, color: Color(0xFF545D68)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Categories',
            style: TextStyle(
                fontFamily: 'Schyler',
                fontSize: 42.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(fontFamily: 'Schyler', fontSize: 21.0),
                ),
              ),
              Tab(
                child: Text(
                  'Cookies Cake',
                  style: TextStyle(fontFamily: 'Schyler', fontSize: 21.0),
                ),
              ),
              Tab(
                child: Text(
                  'Ice Cream',
                  style: TextStyle(fontFamily: 'Schyler', fontSize: 21.0),
                ),
              )
            ],
          ),
          Container(
              height: MediaQuery.of(context).size.height - 100.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiePage(),
                CakePage(),
                IceCreamPage(),
              ]))
        ],
      ),
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
