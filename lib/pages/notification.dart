import 'package:flutter/material.dart';

class Notifcation extends StatefulWidget {
  @override
  _NotifcationState createState() => _NotifcationState();
}

class _NotifcationState extends State<Notifcation> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegate(), itemBuilder: null);
  }
}
