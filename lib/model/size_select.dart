import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  bool onTap = false;
  bool onTap2 = false;
  bool onTap3 = false;
  bool likeButtonTap = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: size.width,
        height: size.height / 2.5,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40))),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "H&M",
                  style: TextStyle(fontFamily: "Comicneue", fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Balloon cotton blouse",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Color",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Comicneue",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Size",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Comicneue",
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(
                          child: Text(
                            "X",
                          )),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(child: Text("XS")),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(child: Text("M")),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(child: Text("L")),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(child: Text("XL")),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "\$30.99",
                      style: TextStyle(
                          fontFamily: "Comicneue",
                          fontSize: 30,
                          color: Colors.redAccent),
                    ),
                    MaterialButton(
                        onPressed: () {  },
                        child: Container(
                          height: size.height / 25,
                          width: size.width / 3,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    color: Colors.black38,
                                    offset: Offset(01, 02),
                                    blurRadius: 3)
                              ],
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                                "Buy now",
                                style: TextStyle(
                                    fontFamily: "Comicneue", color: Colors.white),
                              )),
                        ))
                  ],
                )
              ],
            ),
            Positioned(
                top: -10,
                right: 0,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        likeButtonTap = !likeButtonTap;
                      });
                    },
                    icon: Icon(
                      likeButtonTap == false
                          ? Icons.favorite_border
                          : Icons.favorite,
                      color: likeButtonTap == false
                          ? Colors.grey
                          : Colors.red,
                    ))),
            Positioned(
              left: 4,
              top: 106,
              child: InkWell(
                onTap: () {
                  setState(() {
                    onTap = !onTap;
                  });
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.check,
                    color: onTap == false
                        ? Colors.transparent
                        : Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 64,
              top: 106,
              child: InkWell(
                onTap: () {
                  setState(() {
                    onTap2 = !onTap2;
                  });
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.check,
                    color: onTap2 == false
                        ? Colors.transparent
                        : Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 124,
              top: 106,
              child: InkWell(
                onTap: () {
                  setState(() {
                    onTap3 = !onTap3;
                  });
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.check,
                    color: onTap3 == false
                        ? Colors.transparent
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
