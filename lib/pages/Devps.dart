import 'package:flutter_web/material.dart';

class Devps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("computer.jpg"),fit: BoxFit.cover),
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          height: 300,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "me.jpg"),
                          ),
                        ),
                      ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "Hello, I'm Piyush Sinha.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GoogleSansRegular',
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "I'm an Android Developer & Flutter Evangelist.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GoogleSansRegular',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
  }
}