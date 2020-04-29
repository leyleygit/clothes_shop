import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:new_project/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              color: Colors.white)),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> banner = [
    "asset/imgs/banner.jpg",
    "asset/imgs/banner2.jpg",
    "asset/imgs/banner3.jpg",
    "asset/imgs/banner4.jpg",
    "asset/imgs/banner5.jpg"
  ];
  SwiperController swiperController = SwiperController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.sort),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height / 4,
                child: Swiper(
                  controller: swiperController,
                  autoplay: true,
                  itemBuilder: (_, index) {
                    return Container(
                      width: size.width,
                      height: size.height / 4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(banner[index]))),
                    );
                  },
                  itemCount: 5,
                ),
              ),
              Container(
                width: size.width,
                height: size.height / 15,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.purpleAccent.withOpacity(0.3)))),
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      //color: Colors.blue,
                      width: size.width / 2.8,
                      height: size.height,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "MAN .",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Text("WOMAN",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: MaterialButton(
                          onPressed: () {},
                          color: Colors.purpleAccent.withOpacity(0.8),
                          minWidth: 0,
                          child: Icon(
                            Icons.tune,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("New Clothes",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.7))),
                    SizedBox(height: 20),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductItems extends StatelessWidget {
  const ProductItems({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2,
      height: size.height / 3.5,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(spreadRadius: 1, color: Colors.purpleAccent, blurRadius: 10, offset: Offset(6, 7))],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(10)),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  "asset/imgs/iteam5.jpeg"))),
    );
  }
}
