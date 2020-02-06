import 'package:flutter/material.dart';
import 'package:portfolio/screens/base/base_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';

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
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                child: Container(
                  color: Colors.black12,
                  height: 20.0,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.black12,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.black12,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.black12,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
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
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget buildSmallLayout(BuildContext context) {
    return buildLargeLayout(context);
  }
}
