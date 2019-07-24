import 'package:flutter_web/material.dart';
import 'package:web_demo/pages/Work/Work3.dart';
//
import './Work/Work1.dart';
import './Work/Work2.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  PageController _pageController = PageController();
  int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
  }

  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        Work3(),
        Work1(),
        Work2(),
      ],
      onPageChanged: (currentPage) {
        this.setState(() => _currentPage = currentPage);
      },
    );
  }

  Widget _buildNavigation() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: _currentPage != 0
                ? IconButton(
                    icon: Icon(Icons.arrow_left),
                    iconSize: 300.0,
                    color: Colors.pink.withOpacity(0.5),
                    onPressed: () => _pageController.previousPage(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 400)),
                  )
                : Container(),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: _currentPage != 2
                ? IconButton(
                    icon: Icon(Icons.arrow_right),
                    iconSize: 300.0,
                    color: Colors.pink.withOpacity(0.5),
                    onPressed: () => _pageController.nextPage(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 400)),
                  )
                : Container(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          _buildPageView(),
          _buildNavigation(),
        ],
      ),
    );
  }
}