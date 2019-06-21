import 'package:flutter_web/material.dart';
//
import './pages/Devps.dart';
import './pages/About.dart';
import './pages/Skills.dart';
import './pages/Work/Work1.dart';
import './pages/Work/Work2.dart';
import './pages/Contact.dart';

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
      appBar: AppBar(
        title: Text("devPS",
        style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GoogleSansRegular',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),),
                  backgroundColor: Colors.black,
                      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(Icons.arrow_drop_up,size: 20.0,),
                                  ),
            backgroundColor: Colors.black,
            onPressed:(){controller.previousPage(duration: kTabScrollDuration, curve: Curves.ease);},),
          FloatingActionButton(
            child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(Icons.arrow_drop_down,size: 20.0,),
                                  ),
            backgroundColor: Colors.black,
            onPressed: (){controller.nextPage(duration: kTabScrollDuration, curve: Curves.ease);},),
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