import 'package:flutter/material.dart';
import 'package:portfolio/entities/product_entity.dart';
import 'package:portfolio/screens/base/base_screen.dart';
import 'package:portfolio/widgets/product_view/product_view.dart';
import 'package:portfolio/widgets/product_view/blog_view.dart';

class ProductsScreen extends StatefulWidget {
  ProductsScreen({Key key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends BaseScreenLayout<ProductsScreen> {
  List<ProductEntity> _arrProduct = [
    ProductEntity(
        "GDG Kolkata Devfest",
        "https://lh3.googleusercontent.com/N0lD0nt9ARKyefUpBGYb5irvyut1215s36ztnBuZvxLie8ibm_or3LFXi873iUViU7M=s180-rw",
        "https://play.google.com/store/apps/details?id=gdg.devfest19","The Official App for GDG DevFest Kolkata, the largest DevFest in Eastern India."),
    ProductEntity(
        "QuizAdda",
        "https://lh3.googleusercontent.com/GxJn_wNdzwAEvqGeRZ4UpFxiCdQYXjYfOoTUdOrORjJ_et4wPYeDDT12WDuNuxm37Q=s180-rw",
        "https://play.google.com/store/apps/details?id=devPS.quizadda","Test your knowledge in many different categories and sharpen your skills with QuizAdda."),
  ];
  List<ProductEntity> _arrBlog = [
    ProductEntity(
        "BLoC Pattern",
        "https://miro.medium.com/max/1120/1*CkR6kf9ZGSMCy4Ft89ZSvg.png",
        "https://medium.com/flutter-community/implementing-bloc-pattern-using-flutter-bloc-62a62e0319b5",""),
    ProductEntity(
        "Google Maps in Flutter-I",
        "https://miro.medium.com/max/560/1*LFxxXWVKnRHItacFZfSyBw.png",
        "https://medium.com/flutter-community/google-maps-in-flutter-i-feeb72354392",""),
    ProductEntity(
        "Google Maps in Flutter-II",
        "https://miro.medium.com/max/560/1*LFxxXWVKnRHItacFZfSyBw.png",
        "https://medium.com/flutter-community/google-maps-in-flutter-ii-260f43db5924",""),
  ];
  @override
  Widget buildLargeLayout(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 48,right:22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text("Apps",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.white)),
              Container(
                width: 80,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF6C63FF),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildListProduct(_arrProduct),
              Text("Blogs",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.white)),
              Container(
                width: 80,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF6C63FF),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildListBlog(_arrBlog),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSmallLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text("Apps",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GoogleSans",
                    color: Colors.white)),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF6C63FF),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            _buildListProduct(_arrProduct),
            SizedBox(
              height: 30,
            ),
            Text("Blogs",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GoogleSans",
                    color: Colors.white)),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF6C63FF),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            _buildListBlog(_arrBlog),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListProduct(List<ProductEntity> arr) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (ctx, index) =>ProductView(
        data: arr[index],
      ),
      itemCount: arr.length,
    );
  }

  Widget _buildListBlog(List<ProductEntity> arr) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (ctx, index) =>BlogView(
        data: arr[index],
      ),
      itemCount: arr.length,
    );
  }
}
