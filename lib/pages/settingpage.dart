import 'package:flutter/material.dart';
import 'package:new_project/model/itemsSetting.dart';
import 'package:new_project/model/page_reveal.dart';
import 'package:new_project/pages/accountpage.dart';

class animatedSettingpage extends StatefulWidget {
final dynamic animation;

  final Size size;

  const animatedSettingpage({Key key, this.animation, this.size}) : super(key: key);

  @override
  _animatedSettingpageState createState() => _animatedSettingpageState();
}

class _animatedSettingpageState extends State<animatedSettingpage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    return PageReveal(
      revealPercent:1.0 * widget.animation,
      child: Container(
        //Setting Page
        width: size.width / 1.5,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(end: Alignment.bottomCenter,begin: Alignment.topCenter ,colors: [Color(0xff03001e), Color(0xff7303c0), Color(0xff24243e)])
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text("KerKer", style: TextStyle(color: Colors.white),),
                subtitle: Text("kerker@gmail.com",style: TextStyle(color: Colors.white),),
                leading: CircleAvatar(
                  child: Icon(Icons.person,),
                ),
              ),
              Divider(
                height: 50,
                thickness: 0.3,
                color: Colors.white,
                indent: 16,
                endIndent: 16,
              )
              ,
              ItemesSetting(
                icon: Icons.home,
                title: "Home",
                press: (){},
              ),
              ItemesSetting(
                icon: Icons.perm_identity,
                title: "Account",
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountPage()));
                },
              ),
              ItemesSetting(
                icon: Icons.shopping_basket,
                title: "My Order",
                press: (){},
              ),
              ItemesSetting(
                icon: Icons.card_giftcard,
                title: "Whislist",
                press: (){},
              ),
              Divider(
                height: 50,
                thickness: 0.3,
                color: Colors.white,
                indent: 16,
                endIndent: 16,
              ),
              ItemesSetting(
                icon: Icons.settings,
                title: "Setting",
                press: (){},
              ),
              ItemesSetting(
                icon: Icons.exit_to_app,
                title: "Logout",
                press: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}