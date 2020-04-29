import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/model/size_select.dart';

class ProductDetails extends StatefulWidget {
  final String img;

  const ProductDetails({Key key, this.img}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool onTap = false;
  bool onTap2 = false;
  bool onTap3 = false;
  bool likeButtonTap = false;
//  List<Color> Colorssize = [
//    Colors.red,
//    Colors.red,
//    Colors.red,
//    Colors.red,
//    Colors.red,
//  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.sort),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.img))),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: 20),
              onPressed: () {
                showModalBottomSheet(backgroundColor: Colors.transparent,
                    context: context, builder: (_) => BottomSheetWidget());
              },
              borderRadius: BorderRadius.circular(15),
              color: Colors.purpleAccent,
              child: Text(
                "Start Order ->>",
                style: TextStyle(fontFamily: "Comicneue"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
