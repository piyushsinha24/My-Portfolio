import 'package:flutter/material.dart';

class MyDrawerLayout extends StatelessWidget {
  final ValueChanged<int> onSelectedChanged;

  const MyDrawerLayout({Key key, this.onSelectedChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _navLinks = ["Home", "About", "Work", "Contact"];
    var _width = MediaQuery.of(context).size.width * .65;

    List<Widget> _menuItems = _navLinks
        .asMap()
        .map((index, element) => MapEntry(
            index,
            ListTile(
              title: Text(
                _navLinks[index],
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "GoogleSans",
                    color: Colors.white),
              ),
              onTap: () {
                onSelectedChanged(index);
              },
            )))
        .values
        .toList();

    return Container(
      color: Color(0xFF6C63FF),
      width: _width,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[..._menuItems],
      ),
    );
  }
}
