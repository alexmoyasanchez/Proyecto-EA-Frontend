import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Chat/Chat_screen.dart';
import 'package:flutter_auth/SideBar.dart';
import 'package:flutter_auth/data/data.dart';
import 'package:flutter_auth/models/bar_model.dart';
import 'package:flutter_auth/constants.dart';
import 'dart:async';
import 'package:flutter_auth/Screens/ChatList/chatList_screen.dart';
import 'package:flutter_auth/Screens/BarList/BarList_screen.dart';
import 'package:flutter_auth/Screens/UserList/components/background.dart';
import 'package:flutter_auth/models/community_model.dart';
import 'package:flutter_auth/models/models.dart';

class Body extends StatelessWidget {
  final Future<Community> community;

  Body({Key key, this.community}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0x66ff56d4),
              Color(0x99ff56d4),
              Color(0xccff56d4),
              Color(0xffff56d4),
            ])),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            _buildMessageComposer(),
          ],
        ));
  }
}

_buildMessageComposer() {
  return Container(
    new Positioned(child: child)
    height: 70.0,
    color: Colors.white,
    alignment: FractionalOffset.bottomCenter,
    child: Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.photo),
          iconSize: 25.0,
          color: Colors.blueAccent,
          onPressed: () {},
        ),
        Expanded(
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration: InputDecoration.collapsed(
              hintText: 'Send a message...',
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          iconSize: 25.0,
          color: Colors.blueAccent,
          onPressed: () {},
        ),
      ],
    ),
  );
}
