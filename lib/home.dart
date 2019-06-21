import 'package:flutter_web/material.dart';
//
import './pages/Devps.dart';
import './pages/About.dart';
import './pages/Skills.dart';
import './pages/Work.dart';
import './pages/Contact.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   PageController controller = PageController();
    int currentPageValue = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    currentPageValue = 0;
  }
   Widget _buildPageButtons(String pageName, int pageNumber) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPageValue=pageNumber;
        });
        controller.animateToPage(
          pageNumber,
          duration: Duration(milliseconds: 600),
          curve: Curves.easeIn,
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              pageName,
              style: TextStyle(
                  color: Colors.white, fontSize: 25.0, fontFamily: 'GoogleSansRegular'),
            ),
            Container(
              width: 40.0,
              height: 2.0,
              margin: EdgeInsets.only(top: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.0),
                color: currentPageValue == pageNumber
                    ? Colors.white
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("devPS",
        style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GoogleSansRegular',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.black,
                  actions: <Widget>[
                    _buildPageButtons("home", 0),
                    _buildPageButtons("about", 1),
                    _buildPageButtons("skills", 2),
                    _buildPageButtons("work", 3),
                    _buildPageButtons("contact", 4),
                  ],
                      ),
      body: PageView(
       children: <Widget>[
           Devps(),
           About(),
           Skills(),
           Work(),
           Contact(),
       ],
          scrollDirection: Axis.vertical,
          controller: controller,
          physics: new NeverScrollableScrollPhysics(),
           onPageChanged: (int currentPage) {
        this.setState(() => currentPageValue = currentPage);
      },
          //pageSnapping: false,
          
        ),
    );
  }
}