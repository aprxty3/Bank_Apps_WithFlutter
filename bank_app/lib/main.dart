import 'package:bank_app/app_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Banking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Card topArea() => Card(
        margin: EdgeInsets.all(10.0),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Color(0xFF015FFF), Color(0xFF015FFF)])),
            padding: EdgeInsets.all(5.0),
            // color: Color(0xFF015FFF),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    Text("Savings",
                        style: TextStyle(color: Colors.white, fontSize: 20.0)),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(r"$ " "95,940.00",
                        style: TextStyle(color: Colors.white, fontSize: 24.0)),
                  ),
                ),
                SizedBox(height: 35.0),
              ],
            )),
      );
  Container accountItems(
          String item, String charge, String dateString, String type,
          {Color oddColour = Colors.white}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0)),
                Text(charge, style: TextStyle(fontSize: 16.0))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
          ],
        ),
      );
  displayAccoutList() {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Column(
        children: <Widget>[
          accountItems("Trevello App", r"+ $ 4,946.00", "28-04-16", "credit",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Creative Studios", r"+ $ 5,428.00", "26-04-16", "credit"),
          accountItems("Amazon EU", r"+ $ 746.00", "25-04-216", "Payment",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Creative Studios", r"+ $ 14,526.00", "16-04-16", "Payment"),
          accountItems(
              "Book Hub Society", r"+ $ 2,876.00", "04-04-16", "Credit",
              oddColour: const Color(0xFFF7F7F9)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Accounts"),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.blue), onPressed: () {})
        ],
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // MaterialButton(
                //     child: Text("ACTIVITY"),
                //     minWidth: MediaQuery.of(context).size.width / 3,
                //     color: Color(0xFF015FFF),
                //     padding:
                //         EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(0.0)),
                //     onPressed: () {}),

                Expanded(
                  child: FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0)),
                    color: Color(0xFF015FFF),
                    // borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
                    onPressed: () {},
                    child: Text("ACTIVITY",
                        style: TextStyle(fontSize: 10.0, color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0)),
                    borderSide:
                        BorderSide(color: Color(0xFF015FFF), width: 1.0),
                    onPressed: () {},
                    child: Text("STATEMENTS",
                        style: TextStyle(
                            color: Color(0xFF015FFF), fontSize: 10.0)),
                  ),
                ),
                Expanded(
                    child: OutlineButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
                  onPressed: () {},
                  child: Text("DETAILS",
                      style:
                          TextStyle(color: Color(0xFF015FFF), fontSize: 10.0)),
                ))
              ],
            ),
          ),
        ),
      ),
      body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              topArea(),
              SizedBox(
                height: 36.0,
                child: Icon(
                  Icons.refresh,
                  size: 35.0,
                  color: Color(0xFF015FFF),
                ),
              ),
              Container(
                child: displayAccoutList(),
              )
            ],
          )),
    );
  }
}
