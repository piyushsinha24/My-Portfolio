import 'package:flutter_web/material.dart';
import 'dart:html' as html;


class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.cyan[800],
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        child: Image.asset(
                            "java.png"),
                      ),
                      Container(
                        height: 120.0,
                        child: Image.asset(
                            "android.png"),
                      ),
                      Container(
                        height: 120.0,
                        child: Image.asset(
                            "flutter.ico"),
                      ),
                      Container(
                          height: 120.0,
                          child: Image.asset(
                              "py.png")),
                      Container(
                          height: 120.0,
                          child: Image.asset(
                              "firebase.png")),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Looking for a quick learning developer? Thats me!",
                            style: TextStyle(
                              fontSize: 50.0,
                              fontFamily: 'GoogleSansRegular',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: () {
                              html.window.open('https://drive.google.com/uc?export=download&id=1oDV9DOqWUyNdZZhzV73Dj7zfTzi_2oRu','Resume');
                            },
                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                            child: Text(
                              "Resume",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'GoogleSansRegular',
                                color: Colors.cyan[800],
                              ),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
            
  }
}