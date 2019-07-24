import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class Devps extends StatefulWidget {
  PageController controller;
  int currentPageValue;
  Devps(this.controller, this.currentPageValue);
  @override
  _DevpsState createState() => _DevpsState();
}

class _DevpsState extends State<Devps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("bg.png"), fit: BoxFit.cover),
      ),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hello, I'm ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GoogleSansRegular',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Piyush Sinha",
                    style: TextStyle(
                        color: Colors.pink,
                        fontFamily: 'GoogleSansRegular',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "I'm an Android Developer & Flutter Evangelist.",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GoogleSansRegular',
                  fontSize: 30.0,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              width:250.0 ,
              child: OutlineButton(
                color: Colors.transparent,
                borderSide: BorderSide(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Know Me More",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GoogleSansRegular',
                        fontSize: 20.0,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(Icons.mouse,color: Colors.white,size: 20.0,),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    widget.currentPageValue = 0;
                  });
                  widget.controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
