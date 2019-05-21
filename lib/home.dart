import 'package:flutter_web/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.kinja-img.com/gawker-media/image/upload/s--if-18tmK--/c_scale,f_auto,fl_progressive,q_80,w_800/l7qxf1lkf2oogenhr3ph.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://scontent.fpat2-1.fna.fbcdn.net/v/t1.0-9/46503354_2075410189214325_4591568335778349056_n.jpg?_nc_cat=108&_nc_oc=AQnQN7Ddz3Kjd8s3TkAkPzrwrB8JzmNIj7pNfXsrEdgIUkvGmJ_yZni9nXfBLspxR4s&_nc_ht=scontent.fpat2-1.fna&oh=59edd5168cb39cf876cd3969de0251f3&oe=5D6472E9"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "PIYUSH SINHA",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GoogleSansRegular',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'http://guldfasanen4.se/wordpress/wp-content/uploads/2015/05/white-room-background_web.jpg'),
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
                  padding: const EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.all(10.0),
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
          ),
          Container(
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
                      child: Image.network(
                          "http://aux4.iconspalace.com/uploads/7803638861543571477.png"),
                    ),
                    Container(
                      height: 120.0,
                      child: Image.network(
                          "http://icons.iconarchive.com/icons/dakirby309/simply-styled/256/OS-Android-icon.png"),
                    ),
                    Container(
                      height: 120.0,
                      child: Image.network(
                          "https://codelabs.flutter-io.cn/favicon.ico"),
                    ),
                    Container(
                        height: 120.0,
                        child: Image.network(
                            "http://ocdatabases.com/images/python.png")),
                    Container(
                        height: 120.0,
                        child: Image.network(
                            "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6d244090-b519-4f4a-8cf1-65500d741019/d4ougoi-de1ec5bf-8cbf-4ef7-b838-fa0de67c38db.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzZkMjQ0MDkwLWI1MTktNGY0YS04Y2YxLTY1NTAwZDc0MTAxOVwvZDRvdWdvaS1kZTFlYzViZi04Y2JmLTRlZjctYjgzOC1mYTBkZTY3YzM4ZGIucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.awCep_bjy67Qnd07RNpZMhqjsgR3emqO-YF87XO48b0")),
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
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-01.jpg'),
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
                          child: Image.network(
                              "https://www.freeiconspng.com/uploads/github-logo-icon-30.png"),
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
                          child: Image.network(
                              "http://icons.iconarchive.com/icons/dtafalonso/android-lollipop/256/Play-Store-icon.png"),
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
          ),
           Container(
             decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                   "https://1zmiiq24oo5a7l1r624eayhp-wpengine.netdna-ssl.com/wp-content/uploads/2016/10/hacker.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(height: 50.0,child: Image.network("http://www.logospng.com/images/0/gmail-logo-png-images-free-download-660.png")),
                    Text("piyush.sinha24@gmail.com",style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'GoogleSansRegular',
                          color: Colors.white,
                        ),)
                  ],
                ),
                Text("Made with ❤ By devPS", style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'GoogleSansRegular',
                          color: Colors.white,
                        ),),
              ],
            ),
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
