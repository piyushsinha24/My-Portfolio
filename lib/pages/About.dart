import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("bg3.png"), fit: BoxFit.cover),
      ),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.black54,
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width - 300,
                      child: Column(
                        children: <Widget>[
                           CircleAvatar(
                    backgroundImage:AssetImage("me2.jpg"),
                    radius: 120.0,
                  ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 100.0,
                                top: 8.0,
                                left: 100.0,
                                bottom: 8.0),
                            child: Text(
                              "My journey with Android Development started in 2017 and from day one I absolutely loved it. As a teenager who always found interest in technology-related topics, this new “code” thing seemed outstandingly fascinating. I built apps for my college, worked as an Android Developer Intern with an E-commerce company and collaborated with some great devs at Google Developers Group Kolkata. I’m looking forward to bringing that passion to a full-time role.",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'GoogleSansRegular',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 100.0,
                                top: 8.0,
                                left: 100.0,
                                bottom: 8.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Looking for a quick learning developer?",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'GoogleSansRegular',
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  " That's me!",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'GoogleSansRegular',
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: OutlineButton(
                              borderSide: BorderSide(color: Colors.white),
                              color: Colors.transparent,
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GoogleSansRegular',
                                  fontSize: 30.0,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://drive.google.com/open?id=10E078WerHNJIqBixxvLyeXud8K53v7sD',
                                    'Resume');
                              },
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
