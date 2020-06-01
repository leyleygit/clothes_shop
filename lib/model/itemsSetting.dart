import 'package:flutter/material.dart';
class ItemesSetting extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function press;

  const ItemesSetting({Key key, this.icon, this.title, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.cyanAccent,
              size: 25,
            ),
            SizedBox(
              width: 20,
            ),
            Text(title, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
