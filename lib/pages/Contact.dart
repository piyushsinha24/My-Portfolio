import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("bg3.png"), fit: BoxFit.cover),
      ),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.black54,
              child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "stop by & say 'Hi!'",
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: 'GoogleSansRegular',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80.0,
                    child: FlatButton(
                      onPressed: () {
                        html.window.open(
                            'https://www.linkedin.com/in/piyush-sinha-873625145/',
                            'linkedin');
                      },
                      child: Image.asset("linkedin.png"),
                      color: Colors.transparent,
                    ),
                  ),
                  Container(
                    height: 80.0,
                    child: FlatButton(
                        color: Colors.transparent,
                        onPressed: () {
                          html.window.open(
                              'https://www.facebook.com/piyush.sinha.549', 'fb');
                        },
                        child: Image.asset("fb.png")),
                  ),
                  Container(
                    height: 80.0,
                    child: FlatButton(
                        color: Colors.transparent,
                        onPressed: () {
                          html.window.open(
                              'https://www.instagram.com/piyushsinha07/',
                              'insta');
                        },
                        child: Image.asset("insta.png")),
                  ),
                  Container(
                    height: 80.0,
                    child: FlatButton(
                        color: Colors.transparent,
                        onPressed: () {
                          html.window.open(
                              'https://mail.google.com/mail/u/0/?view=cm&fs=1&to=piyush.sinha24@gmail.com&tf=1',
                              'mail');
                        },
                        child: Image.asset("mail.png")),
                  ),
                  Container(
                    height: 80.0,
                    child: FlatButton(
                        color: Colors.transparent,
                        onPressed: () {
                          html.window
                              .open('https://github.com/piyushsinha24', 'github');
                        },
                        child: Image.asset("git2.png")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
