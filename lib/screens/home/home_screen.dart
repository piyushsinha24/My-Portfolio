import 'package:flutter/material.dart';
import 'package:portfolio/screens/base/base_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseScreenLayout<HomeScreen> {
  @override
  Widget buildLargeLayout(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildLeftContent(),
              ),
            ),
          ),
          Flexible(
            child: AvatarGlow(
              startDelay: Duration(milliseconds: 1000),
              glowColor: Colors.black12,
              endRadius: 280.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Image.network(
                    'https://avatars1.githubusercontent.com/u/26529503?s=460&v=4',
                  ),
                  radius: 160.0,
                  // shape: BoxShape.circle
                ),
              ),
              shape: BoxShape.circle,
              animate: true,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildRightContent(),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildSmallLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AvatarGlow(
              startDelay: Duration(milliseconds: 1000),
              glowColor: Colors.black12,
              endRadius: 200.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Image.network(
                    'https://avatars1.githubusercontent.com/u/26529503?s=460&v=4',
                  ),
                  radius: 120.0,
                  // shape: BoxShape.circle
                ),
              ),
              shape: BoxShape.circle,
              animate: true,
              curve: Curves.fastOutSlowIn,
            ),
            ..._buildSmallContent(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSmallContent() {
    return [
      Text("Hello.",
          style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              fontFamily: "GoogleSans",
              color: Colors.white)),
      RichText(
        text: TextSpan(
            text: "I'm ",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "GoogleSans",
              color: Colors.white,
            ),
            children: [
              TextSpan(
                  text: "Piyush Sinha",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "GoogleSans",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C63FF)))
            ]),
      ),
    Row(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 onPressed: (){
                   launch("https://drive.google.com/open?id=1Q_KZuygYo_wS_7Mf079bFiHkCJIMDDHf");
                 },
                 color: Color(0xFF6C63FF),
                 child: Text("Resume",style:TextStyle(
                    fontSize: 22,
                    fontFamily: "GoogleSans",
                    color: Colors.white) ,),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 onPressed: (){
                   //
                 },
                 color: Colors.white,
                 child: Text("Contact",style:TextStyle(
                    fontSize: 22,
                    fontFamily: "GoogleSans",
                    color: Color(0xFF6C63FF)) ,),
               ),
             ),
           ],
         ), 
    ];
  }

  List<Widget> _buildLeftContent() {
    return [
      Text("Hello.",
          style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              fontFamily: "GoogleSans",
              color: Colors.white)),
      RichText(
        text: TextSpan(
            text: "I'm ",
            style: TextStyle(
                fontSize: 40, fontFamily: "GoogleSans", color: Colors.white),
            children: [
              TextSpan(
                  text: "Piyush Sinha",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "GoogleSans",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C63FF)))
            ]),
      ),
    ];
  }

  List<Widget> _buildRightContent() {
    return [
      RichText(
        text: TextSpan(
            text: "Android",
            style: TextStyle(
                fontSize: 40, fontFamily: "GoogleSans", color: Colors.white),
            children: [
              TextSpan(
                  text: " Developer",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "GoogleSans",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C63FF)))
            ]),
      ),
      Text("who focuses on writing clean, elegant & efficent code.",
          style: TextStyle(
              fontSize: 22,
              fontFamily: "GoogleSans",
              color: Colors.white)),
         Row(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 onPressed: (){
                   launch("https://drive.google.com/open?id=1Q_KZuygYo_wS_7Mf079bFiHkCJIMDDHf");
                 },
                 color: Color(0xFF6C63FF),
                 child: Text("Resume",style:TextStyle(
                    fontSize: 22,
                    fontFamily: "GoogleSans",
                    color: Colors.white) ,),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 onPressed: (){
                   //
                 },
                 color: Colors.white,
                 child: Text("Contact",style:TextStyle(
                    fontSize: 22,                  
                    fontFamily: "GoogleSans",
                    color: Color(0xFF6C63FF)) ,),
               ),
             ),
           ],
         ),     
    ];
  }
}
