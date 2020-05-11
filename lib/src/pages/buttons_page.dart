import 'dart:math';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
            _background(),
            SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    _title(),
                    _buttonsRounded(),
                  ],
              ),
            ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }
  Widget _background(){
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52,54,101,1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ] 
        ) 
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0, 
      child: Container(
      height: 360.0,
      width: 360.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        gradient: LinearGradient(
        colors: [
          Color.fromRGBO(236, 98, 188, 1.0),
          Color.fromRGBO(236, 98, 188, 1.0)
        ]
        )
      ),
      ),
    );

    
    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -100.0,
          child: pinkBox)
      ],
    );
  }

  Widget _title(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
            ],
            ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
      canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
      primaryColor: Colors.pinkAccent,
      textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
    ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Container(),
        ),
      ],
    ),
  );
  }

  Widget _buttonsRounded(){
    return Table(
      children: [
        TableRow(
          children: [
            _createBorder(),
            _createBorder(),
          ],
        ),
        TableRow(
          children: [
            _createBorder(),
            _createBorder(),
          ],
        ),
        TableRow(
          children: [
            _createBorder(),
            _createBorder(),
          ],
        ),
      ],
    );
  }

  Widget _createBorder(){
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 10.0),
           CircleAvatar(
             backgroundColor: Colors.pinkAccent,
             radius: 35.0,
             child: Icon(Icons.swap_calls, color: Colors.white, size: 30.0),
           ),
           Text('thing', style: TextStyle(color: Colors.pink)),
           SizedBox(height: 10.0),
        ],
      ),
    );
  }

}