import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle    = TextStyle(fontSize: 20.0, fontWeight:  FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0,   color: Colors.grey);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //En esta column van todos los widget de forma vertical
      body: Column(
        children: <Widget>[
            //Imagen principal arriba
          createImage(),
          createTitle(),
          createActions(),
          createText(),
          
        ],
      ),
    );
  }

  Widget createImage(){
    return Image(
      image: NetworkImage('https://www.singlequiver.com/enelpico/wp-content/uploads/2017/04/5-claves-para-hacer-bien-el-pato.jpg'),);
  }
  
  Widget createTitle(){
    return Container(
          //Pading para separlo simetricamente
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: <Widget>[

              //Para que no queden espacios se envuelve el Column en un nuevo widget llamado Expanded
              Expanded(
                  child: Column(
                  // Acomodar toda la columna hacia la izquierda
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Surf', style: titleStyle),
                    //darle espacio entre ambos textos
                    SizedBox(height: 7.0,),
                    Text('Surf in Arrail do Cabo', style: subtitleStyle,),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.red),
              Text('41', style: TextStyle(fontSize: 20.0))
            ],
          ),
        );
  }
  
  Widget createActions(){
    return Row(
      //main axis alignment en un row es la manera de como se ordenan de forma horizontal
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _action(IconData icon, String text){
    return Column(children: <Widget>[
            Icon(icon, color:Colors.blueGrey, size: 40.0),
            SizedBox(height: 5.0),
            Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),)
    ],);
  }

  Widget createText(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical:20.0),
      child:  Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
        child: Text(
          ' es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igu',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}