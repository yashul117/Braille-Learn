import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculator.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FlutterTts flutterTts = FlutterTts();
  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setLanguage("hi-IN");
      await flutterTts.setPitch(1);
      await flutterTts.speak("Double Tap kare aur Braille Seekhe ");
    }

    Future _speak1() async {
      await flutterTts.setLanguage("hi-IN");
      await flutterTts.setPitch(1);
      await flutterTts.speak("Kuch मजेदार Sawal");
    }

    Future _speak2() async {
      await flutterTts.setLanguage("hi-IN");
      await flutterTts.setPitch(1);
      await flutterTts.speak("नया Gyaan ka sagar");
    }

    Future _speak3() async {
      await flutterTts.setLanguage("hi-IN");
      await flutterTts.setPitch(1);
      await flutterTts.speak("Goga Humara Masiha , Goga Sabse Mahan");
    }

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          home(size: size),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: 62,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 62,
                        backgroundImage: NetworkImage(
                            "https://smoothmove.co.za/wp-content/uploads/2021/02/pp1.jpg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Peter Parker',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3),
                          ),
                          // Text(
                          //   'Admin',
                          //   style: TextStyle(color: Colors.white),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        child: InkWell(
                          onTap: () => _speak(),
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Calculator()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://st2.depositphotos.com/5425740/9532/v/380/depositphotos_95328970-stock-illustration-vector-group-of-students.jpg",
                                height: 120,
                              ),
                              Text('Braille Learn'),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          onTap: () => _speak1(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://pngimage.net/wp-content/uploads/2018/06/homework-cartoon-png-2.png",
                                height: 120,
                              ),
                              Text('Challenges'),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          onTap: () => _speak2(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://www.smallbizdaily.com/wp-content/uploads/2021/01/shutterstock_1746002939-1.jpg",
                                height: 120,
                              ),
                              Text('Vocabulary'),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          onTap: () => _speak3(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://pngimage.net/wp-content/uploads/2018/06/homework-cartoon-png-2.png",
                                height: 120,
                              ),
                              Text('Progress'),
                            ],
                          ),
                        ),
                      ),
                      // Card(
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: <Widget>[
                      //       Image.network(
                      //         "https://i.pinimg.com/originals/55/69/55/5569554b4d8a9bb11965949e1af08dbf.png",
                      //         height: 120,
                      //       ),
                      //       Text('Teachers Record'),
                      //     ],
                      //   ),
                      // ),
                      // Card(
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: <Widget>[
                      //       Image.network(
                      //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTku2oJC2M9rZu0jq3hLd7n_lgwUEFudUCVLu_XOo7bY0V_7ih5LsWA9p2LBVPFNkbVZx8&usqp=CAU",
                      //         height: 120,
                      //       ),
                      //       Text('Logout'),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.login, size: 30),
        ],
        index: 0,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceIn,
        onTap: (index) {},
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .2,
      decoration: BoxDecoration(
          image: DecorationImage(
        alignment: Alignment.topCenter,
        image: Image.network(
                "https://mars-metcdn-com.global.ssl.fastly.net/content/uploads/sites/101/2019/04/30162428/Top-Header-Background.png")
            .image,
      )),
    );
  }
}
