import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/model/databuyinfo.dart';

class Buyinfo extends StatefulWidget {
  @override
  _BuyinfoState createState() => _BuyinfoState();
}

class _BuyinfoState extends State<Buyinfo> {
  int selectedIndexcolors = 0;
  int selectedIndexsize;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
        color: Colors.white,
      ),
      height: size.height / 2.5,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "H&M",
                  style: GoogleFonts.aBeeZee(fontSize: 20),
                ),
                Text(
                  "Ballon cotton blouse",
                  style: GoogleFonts.aBeeZee(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.017,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Color",
                    style: GoogleFonts.aBeeZee(fontSize: 17),
                  ),
                  Container(
                    width: size.width / 2,
                    height: size.height * 0.066,
                    // color: Colors.red,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (BuildContext context, int indexListView) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, right: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndexcolors = indexListView;
                                print(
                                    "selectedIndex = ${selectedIndexcolors} : index = ${indexListView}");
                              });
                            },
                            child: Container(
                              child: Center(
                                  child: Icon(
                                      selectedIndexcolors == indexListView
                                          ? Icons.check
                                          : null,
                                      color:
                                          selectedIndexcolors == indexListView
                                              ? Colors.white
                                              : null)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: colors[indexListView],
                                  border: Border.all(
                                      width: 4, color: Colors.grey[200])),
                              width: 40,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Size",
                    style: GoogleFonts.aBeeZee(fontSize: 17),
                  ),
                  Container(
                    width: size.width / 1.2,
                    height: size.height * 0.06,
                    // color: Colors.red,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: sizeclothes.length,
                      itemBuilder: (BuildContext context, int indexsize) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, right: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndexsize = indexsize;
                              });
                            },
                            child: Container(
                              child: Center(
                                  child: Text(
                                sizeclothes[indexsize],
                                style: GoogleFonts.aBeeZee(
                                    fontSize: selectedIndexsize == indexsize
                                        ? 20
                                        : 15,
                                    color: selectedIndexsize == indexsize
                                        ? Colors.white
                                        : Colors.black),
                              )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey.withOpacity(0.40),
//                                  border: Border.all(
//                                      width: 4, color: Colors.orange)
                              ),
                              width: 40,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "\$30.99",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 30, color: Colors.pink),
                  ),
                   CupertinoButton(
                    padding: EdgeInsets.all(1.0),
                    onPressed: (){},
                    child: Container(
                      child: Center(child: Text("buy now", style: TextStyle(color: Colors.white, fontSize: 15),)),
                      width: size.width * 0.3,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 1,
                                blurRadius: 2.0,
                                offset: Offset(1.0, 2.0))
                          ],
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
