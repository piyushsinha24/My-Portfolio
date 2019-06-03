import 'package:flutter_web/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   PageController controller = PageController(viewportFraction: 1, keepPage: true);
  var currentPageValue = 0.0;
  @override
  void initState() {
    // TODO: implement initState
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
            Work(),
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
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Android Developer | Flutter ❤",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'GoogleSansRegular',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:45.0,top: 8.0,left: 8.0),
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
                    padding: const EdgeInsets.only(right:45.0,top:8.0,left:8.0),
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
                              "c.png")),
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
                            onPressed: () {},
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
class Work extends StatelessWidget {
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
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            child: Image.asset(
                                "github.png"),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Check out my Github Projects",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'GoogleSansRegular',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Github Profile",
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            child: Image.asset(
                                "playstore.png"),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Check out my publishsed apps",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'GoogleSansRegular',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Google Play Dev A/C",
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
                        ],
                      ),
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
                  image: AssetImage(
                     "hacker.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 50.0,child: Image.asset("mail.png")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("piyush.sinha24@gmail.com",style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'GoogleSansRegular',
                              color: Colors.white,
                            ),),
                      )
                    ],
                  ),
                  Text("Made with ❤ by devPS", style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'GoogleSansRegular',
                            color: Colors.white,
                          ),),
                ],
              ),
            );
  }
}