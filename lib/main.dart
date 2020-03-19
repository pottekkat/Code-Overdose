import 'package:flutter/material.dart';

import './widgets/landing_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Overdose',
      home: MyHomePage(),
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.white,
          fontFamily: 'Roboto'),
      darkTheme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.black,
          fontFamily: 'Roboto'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    // var sizeOfDevice = MediaQuery.of(context).size;
    double appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        centerTitle: true,
        title: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "./assets/images/logo-colored-appbar.png",
                fit: BoxFit.cover,
                height: appBarHeight - 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Code Overdose",
                style: TextStyle(
                    fontFamily: "Oxanium",
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),

        // This line of code was originally added to include a Dark Mode

        //leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        // actions: <Widget>[
        //   Switch(
        //     value: isSwitched,
        //     onChanged: (value) {
        //       setState(() {
        //         isSwitched = value;
        //       });
        //     },
        //     activeTrackColor: Theme.of(context).primaryColor,
        //     activeColor: Theme.of(context).accentColor,
        //   ),
        // ],

        // Ends here
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: LandingTile(),
      ),
    );
  }
}
