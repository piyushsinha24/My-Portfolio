

import 'package:flutter/material.dart';
import 'package:portfolio/style/custom_icons.dart';
import 'package:portfolio/utils/screen_utils.dart';

class NavBar extends StatefulWidget {
  final ValueChanged<int> onSelectedChanged;
  final VoidCallback onToggleDrawerLayout;

  const NavBar({Key key, this.onSelectedChanged, this.onToggleDrawerLayout}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navLinks = ["Home", "About", "Work",  "Contact"];

  int _selectedIndex = 0;

  List<Widget> navItem() {
    return navLinks
        .asMap()
        .map((index, element) => MapEntry(
            index,
            InkWell(
              onTap: () {
                widget.onSelectedChanged(index);
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    // width: double.infinity,
                    width: 80,
                    height: 4,
                    margin: EdgeInsets.only(top: 25),
                    decoration: _selectedIndex == index
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFF6C63FF),
                          )
                        : null,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(navLinks[index],
                        style: TextStyle(
                            fontFamily: "GoogleSans",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            )))
        .values
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 18),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: 8,
            ),
            RichText(
          text: TextSpan(
              text: "dev",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "GoogleSans",
                  color: Colors.white,),
              children: [
                TextSpan(
                    text: "PS",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "GoogleSans",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6C63FF)))
              ]),
        ),
            
            Expanded(
              child: Container(),
            ),
            Container(
                child: (!ScreenUtils.isSmallScreen(context))
                    ? Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[...navItem()]),
                      )
                    : IconButton(
                        icon: Icon(CustomIcons.menu,color: Colors.white,),
                        onPressed: () {
                          widget.onToggleDrawerLayout();
                        },
                      )),
          ],
        ),
      ),
    );
  }
}
