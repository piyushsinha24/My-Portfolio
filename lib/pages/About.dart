import 'package:flutter_web/material.dart';

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