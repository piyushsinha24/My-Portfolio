import 'package:flutter/material.dart';
import 'package:portfolio/entities/product_entity.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/style/custom_icons.dart';

class BlogView extends StatelessWidget {
  final ProductEntity data;

  const BlogView({this.data}) : assert(data != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Colors.black12),color: Colors.black12,),
        child: ListTile(
          leading: Image.network(data.cover),
          title: Text(
            data.name,
            style: TextStyle(
             fontSize: 22,
             color: Color(0xFF6C63FF),
            ),
          ),
          trailing: IconButton(
            icon: Icon(CustomIcons.medium),
            color: Color(0xFF6C63FF),
            onPressed: () {
              launch(data.url);
            },
          ),
        ),
      ),
    );
  }
}
