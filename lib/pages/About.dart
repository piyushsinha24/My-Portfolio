import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "about me",
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'GoogleSansRegular',
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width - 360,
                    decoration: new BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 100.0, top: 8.0, left: 66.0),
                          child: Text(
                            "I'm a Full Stack Android Developer based in Kolkata, India.",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'GoogleSansRegular',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 100.0, top: 8.0, left: 100.0, bottom: 8.0),
                          child: Text(
                            "My journey with Android Development started in 2017 and from day one I absolutely loved it. As a teenager who always found interest in technology-related topics, this new “code” thing seemed outstandingly fascinating. I built apps for my college, worked as an Android Developer Intern with an E-commerce company. I’m looking forward to bringing that passion to a full-time role.",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'GoogleSansRegular',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 100.0, top: 8.0, left: 100.0, bottom: 8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Looking for a quick learning developer?",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'GoogleSansRegular',
                                  color: Colors.black54,
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
                      ],
                    )),
                Container(
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white10, width: 2.0),
                  ),
                  width: 300,
                  height: 300,
                  child: Image.asset("me.jpg"),
                ),
              ],
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.black,
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
                  'https://drive.google.com/uc?export=download&id=1oDV9DOqWUyNdZZhzV73Dj7zfTzi_2oRu',
                  'Resume');
            },
          ),
        ],
      ),
    );
  }
}
