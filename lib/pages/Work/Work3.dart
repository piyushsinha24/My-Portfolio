import 'package:flutter_web/material.dart';
import 'dart:async';
import 'dart:html' as html;
//

class Work3 extends StatefulWidget {
  @override
  _WorkState3 createState() => _WorkState3();
}

class _WorkState3 extends State<Work3> {
  PageController controller2 = PageController();
  int _currentindex;
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _currentindex = 0;
    _timer = Timer.periodic(Duration(seconds: 2), (Timer t) {
      if (_currentindex != 4) {
        controller2.nextPage(
            duration: Duration(milliseconds: 600), curve: Curves.easeIn);
      } else {
        controller2.animateToPage(0,
            duration: Duration(milliseconds: 700), curve: Curves.easeIn);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
  }

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
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 3,
                  child: PageView(
                    children: <Widget>[
                      Image.asset("gdg1.png"),
                      Image.asset("gdg2.png"),
                      Image.asset("gdg3.png"),
                      Image.asset("gdg4.png"),
                      Image.asset("gdg5.png"),
                    ],
                    controller: controller2,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (int index) {
                      _currentindex = index;
                    },
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(height: 80.0, child: Image.asset("gdg.png")),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "GDG Kolkata DevFest 2019",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'GoogleSansRegular',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 500.0,
                      child: Text(
                        "The Official App for GDG DevFest Kolkata, the largest DevFest in Eastern India.Right from applying for the event to making your way to the venue, from browsing different sessions of your interest to finding about the speakers, this app will guide you throughout.",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'GoogleSansRegular',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            html.window.open(
                                'https://play.google.com/store/apps/details?id=gdg.devfest19',
                                'gdg');
                          },
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.transparent,
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Image.asset(
                              'google_play.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            html.window.open(
                                'https://github.com/Rimjhim28/DevFest-19-App',
                                'gdgGit');
                          },
                          child: Container(
                            padding: EdgeInsets.all(7.0),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(7.0),
                                border:
                                    Border.all(color: Colors.white, width: 1.0)),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('github.png'),
                                ),
                                SizedBox(width: 15.0),
                                Text('Github\nRepository',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
