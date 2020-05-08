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
          Image(image: NetworkImage('https://www.singlequiver.com/enelpico/wp-content/uploads/2017/04/5-claves-para-hacer-bien-el-pato.jpg'),),
          Container(
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
          )
          
        ],
      ),
    );
  }
}