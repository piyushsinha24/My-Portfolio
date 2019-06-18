import 'dart:async';

import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   PageController controller = PageController(viewportFraction: 1, keepPage: true);
  var currentPageValue = 0.0;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("devPS",style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GoogleSansRegular',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),),
                              backgroundColor: Colors.black,
                              ),
                              floatingActionButton: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  FloatingActionButton(child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(Icons.arrow_drop_up,size: 20.0,),
                                  ),backgroundColor: Colors.black,onPressed:(){controller.previousPage(duration: kTabScrollDuration, curve: Curves.ease);},),
                                  FloatingActionButton(child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(Icons.arrow_drop_down,size: 20.0,),
                                  ),backgroundColor: Colors.black,onPressed: (){controller.nextPage(duration: kTabScrollDuration, curve: Curves.ease);},),
                                ],
                              ),
                              

      body: Scrollbar(
               child:PageView(
          children: <Widget>[
            Devps(),
            About(),
            Skills(),
            Work1(),
            Work2(),
            Contact(),
          ],
          scrollDirection: Axis.vertical,
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          //pageSnapping: false,
          
        ),
      ),
    );
  }
}
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
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'about.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(child: Image.asset("android2.png"),height: 80.0,),
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: 50.0,
                            fontFamily: 'GoogleSansRegular',
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Full Stack Android Developer",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:60.0,top: 8.0,left: 8.0),
                    child: Text(
                      "Coding is something which interests me alot. I practice regularly on online judges. I am a quick learner and likes to work on challenging problems while acquiring the required knowledge.",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:60.0,top:8.0,left:8.0),
                    child: Text(
                      "My journey with Android Development started in 2017 and from day one I absolutely loved it. As a teenager who always found interest in technology-related topics, this new “code” thing seemed outstandingly fascinating. I built apps for my college, worked as an Android Developer Intern with an E-commerce company. I’m looking forward to bringing that passion to a full-time role.",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}
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
                              html.window.open('https://drive.google.com/open?id=1oDV9DOqWUyNdZZhzV73Dj7zfTzi_2oRu','Resume');
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
                  Container(height: MediaQuery.of(context).size.height/2,child: Image.asset("hpl.jpg")),
                    ],
                  ),
                ],
              ),
            );
  }
}
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
               decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("contact.jpg"),
                  fit: BoxFit.cover,
                )
                ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Stop by & say 'Hi!'",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.black54,
                      ),
                    ),
                  ),
                SizedBox(height: 80.0,),
          
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 80.0,
                              child: FlatButton(
                   onPressed: () {
                     html.window.open('https://www.linkedin.com/in/piyush-sinha-873625145/','linkedin');
                   },
      
                   child:Image.asset("linkedin.png"),
                   color: Colors.transparent,
                          ),
                            ),
                            Container(
                              height: 80.0,
                              child: FlatButton(
                                color: Colors.transparent,
                              onPressed: () {
                               html.window.open('https://www.facebook.com/piyush.sinha.549','fb');
                               },
                               child: Image.asset("fb.png")
                               
                                ),
                            ),
                             Container(
                              height: 80.0,
                              child: FlatButton(
                                color: Colors.transparent,
                              onPressed: () {
                               html.window.open('https://www.instagram.com/piyushsinha07/','insta');
                               },
                               child: Image.asset("insta.png")
                               
                                ),
                            ),
                            Container(
                              height: 80.0,
                              child: FlatButton(
                                color: Colors.transparent,
                              onPressed: () {
                               html.window.open('https://mail.google.com/mail/u/0/?view=cm&fs=1&to=piyush.sinha24@gmail.com&tf=1','mail');
                               },
                               child: Image.asset("mail.png")
                               
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