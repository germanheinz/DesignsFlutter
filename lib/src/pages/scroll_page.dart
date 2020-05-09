import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(),
        ],
        ),
    );
  }
Widget _page1() {
  return Stack(children: <Widget>[
    _colorBackground(),
    _imageBackground(),
    
  ],
  );
}
Widget _page2() {
  return Center(child: Text('Page 2'));
}

Widget _colorBackground(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 0.5),
  );
}
Widget _imageBackground(){
  return Container(
    width: double.infinity, 
    height: double.infinity, 
    child: Image(
      image: AssetImage('assets/scroll-1.png'),
      fit: BoxFit.cover,
    ),
  );
}

}


