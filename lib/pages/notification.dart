import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/model/datanotifica.dart';

class Notifcation extends StatefulWidget {
  final Widget child;
  final bool onTap;
  const Notifcation({Key key, this.child, this.onTap}) : super(key: key);
  @override
  _NotifcationState createState() => _NotifcationState();
}

class _NotifcationState extends State<Notifcation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        widget.onTap == true
            ? BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
                child: Container(
                  color: Colors.transparent,
                ),
              )
            : Container(),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: nameApp.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Colors.purpleAccent.withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.9),
                ),
                width: size.width,
                height: size.height / 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/imgs/ms.png"))),
                        ),
                        SizedBox(width: 5),
                        Text(
                          nameApp[index],
                          style: GoogleFonts.aBeeZee(fontSize: 17),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 0, right: 5, left: 10),
                      child: Text(
                        "ព្រះយេស៊ូនឹងនាំអ្នកទៅរកសេចក្ដីសុខ​ ជឿរព្រះយេស៊ូអ្នកនឹងមិនឆ្លងជំងឺ Codvid 19 ទេ !!",
                        style: GoogleFonts.kantumruy(),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
