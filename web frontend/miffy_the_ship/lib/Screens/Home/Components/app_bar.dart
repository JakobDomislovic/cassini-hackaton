import 'package:flutter/material.dart';
import 'package:miffy_the_ship/Components/default_button.dart';
import 'package:miffy_the_ship/Components/default_button.dart';
import 'package:miffy_the_ship/Screens/About/about_screen.dart';
import 'package:miffy_the_ship/Screens/Contact/contact_screen.dart';
import 'package:miffy_the_ship/Screens/Home/home_screen.dart';
import 'package:miffy_the_ship/Screens/LogIn/login_screen.dart';
import 'package:miffy_the_ship/Screens/Pricing/pricing_screen.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Miffy the Ship",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          MenuItem(
            title: "About",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
          MenuItem(
            title: "Pricing",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PricingScreen()),
              );
            },
          ),
          MenuItem(
            title: "Contact",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactScreen()),
              );
            },
          ),
          MenuItem(
            title: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
