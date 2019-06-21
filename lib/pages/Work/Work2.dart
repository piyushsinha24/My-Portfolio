import 'package:flutter_web/material.dart';
import 'dart:async';
import 'dart:html' as html;

class Work2 extends StatefulWidget {
  @override
  _WorkState2 createState() => _WorkState2();
}

class _WorkState2 extends State<Work2> {
  PageController controller2 = PageController();
  int _currentindex;
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _currentindex=0;
    _timer=Timer.periodic(Duration(seconds: 2),(Timer t){
      if(_currentindex!=4){
        controller2.nextPage(duration: Duration(milliseconds: 600),curve: Curves.easeIn);
      }
      else{
        controller2.animateToPage(0,duration:Duration(milliseconds:700),curve:Curves.easeIn);
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
                  image: AssetImage(
                      'work.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                SizedBox(height: 30.0,),
                  Row(
                    children: <Widget>[
                      SizedBox(width:30.0),
                      Container(
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width/3,
                        child: PageView(
                          children: <Widget>[
                            Image.asset("hpl1.png"),
                            Image.asset("hpl2.png"),
                            Image.asset("hpl3.png"),
                            Image.asset("hpl4.png"),
                            Image.asset("hpl5.png"),
                          ],
                          controller: controller2,
                          scrollDirection: Axis.horizontal,
                           onPageChanged:(int index){
                            _currentindex=index;
                          },
                        ),
                      ),
                      Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "HPL@AOT",
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
                          "This app is used to refer to all the current statistics and fixtures of the ongoing edition of Hostel Premier League, an yearly cricket tournament held for the boarders of the campus hostel during the even semesters.",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'GoogleSansRegular',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                         child: RaisedButton(
                          onPressed: () {
                            html.window.open('https://play.google.com/store/apps/details?id=devPS.hpl','hpl');
                          },
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "Google Play",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'GoogleSansRegular',
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          onPressed: () {
                            html.window.open('https://github.com/piyushsinha24/flutter_hpl','hplGit');
                          },
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "Github Repo",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'GoogleSansRegular',
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                ],
              ),
            );
  }
}