import 'package:flutter_web/material.dart';
import 'dart:async';
import 'dart:html' as html;

class Work1 extends StatefulWidget {
  @override
  _WorkState1 createState() => _WorkState1();
}

class _WorkState1 extends State<Work1> {
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
                      "Work Samples",
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
                      Container(
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width/3,
                        child: PageView(
                          children: <Widget>[
                            Image.asset("quizadda1.png"),
                            Image.asset("quizadda2.png"),
                            Image.asset("quizadda3.png"),
                            Image.asset("quizadda4.png"),
                            Image.asset("quizadda5.png"),
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
                            "QuizAdda",
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
                          "Test your knowledge in many different categories and sharpen your skills with QuizAdda app. Free to use, user-contributed trivia question database from opentdb API.",
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
                            html.window.open('https://play.google.com/store/apps/details?id=devPS.quizadda','Quizadda');
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
                          color: Colors.cyan[800],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          onPressed: () {
                            html.window.open('https://github.com/piyushsinha24/QuizAdda','QuizaddaGit');
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
                          color: Colors.cyan[800],
                        ),
                      ),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height/2,child: Image.asset("quizadda.png")),
                    ],
                  ),
                ],
              ),
            );
  }
}