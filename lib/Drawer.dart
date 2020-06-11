import 'package:e_commerce/drawerItem/Contoh.dart';
import 'package:e_commerce/drawerItem/HomePage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(5)),
                accountName: Text('Yusuf',style: TextStyle(color: Colors.black),),
                accountEmail: Text('hadiyus321@gmail.com',style: TextStyle(color: Colors.black),),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage('assets/saya.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(EvaIcons.homeOutline),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
              ),
              ListTile(
                title: Text('Favorite'),
                leading: Icon(EvaIcons.heartOutline),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Contoh()));
                },
              ),ListTile(
                title: Text('Setting'),
                leading: Icon(EvaIcons.settings),
              ),ListTile(
                title: Text('Account'),
                leading: Icon(EvaIcons.personOutline),
              ),
            ],
          ),
          
        ),
      );
  }
}