import 'dart:math';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  //Declaracion de variables
  final List<String> nombre=["Monica", "Carolina", "Sandra", "Paola", "Vanessa", "Isabella", "Leydi", "Johana", "Valentina", "Victoria", "Rosa"];
  final List<String> descripcion=["Estudiante EAFIT", "Psicologa", "Entrenadora Deportiva", "Estudiante UdeM", "Enfermera", "Estudiante CES", "Pedagoga Infantil", "Estudiante EIA", "Estudiante UdeM", "Psicologa", "Estudiante CES"];
  final List<String> avatarRuta=["https://gcloudassets.unincol.edu.co/unincol/files/inline-images/unincol-ima-intro.png",
   "http://enjoylanguages.com.mx/assets/images/servicios-image5.jpeg", 
   "https://imagenes.universia.net/gc/net/images/jovenes/j/jo/jov/joven-universitaria.jpg", 
   "https://www.icse.es/assets/img/fp-universitaria-integrada.jpg", 
   "http://ceuno.com.mx/portal/wp-content/uploads/2016/06/banner_01_ceuno_b.png",
   "https://images.pexels.com/users/avatars/249063/alex-tim-177.jpeg?w=256&h=256&fit=crop&crop=faces",
   "https://sarahjeangosney.com/media/10-steps-ebook_hu85aa03aa8559ffbe1f9b0d4ee76a43fc_326664_256x0_resize_q75_box.jpeg",
   "https://pbs.twimg.com/profile_images/585938291330912256/5Z02N-AP_400x400.jpg",
   "http://feedmystartup.com/wp-content/uploads/2018/05/chitra-gurnani-daga-women-entrepreneurs-india-1.jpg",
   "https://pbs.twimg.com/profile_images/689058678994014208/FtuSYVJx_400x400.jpg",
   "https://news.artnet.com/app/news-upload/2014/10/img-gilman1_185345952678.jpg_x_325x433_c-256x256.jpg",
   ];

  //Declaracion de objetos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Disponibles - BABYSISTER", style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFFb6d8a6),
        ),
      body: ListView(
        children: _crearItems()
      ),

    );
  }


  //Devuelve lista de widgets para el listview
  List <Widget> _crearItems()
  {
    List<Widget> listaNineras= new List<Widget>();
    int j=0, min=2, max=5;
    for(var i in nombre)
    {
      final widgetTemporal= ListTile(
        title: Row(
          children: <Widget>[
            Text(i),
            Row(children: _estrellas(min+Random().nextInt(max - min)),)
          ],
        ),
        subtitle: Text(descripcion[j]),
        leading: CircleAvatar(backgroundImage: NetworkImage(avatarRuta[j]),),
        trailing: Icon(Icons.child_care, color: Colors.red,),
        );
      listaNineras.add(widgetTemporal);
      listaNineras.add(Divider());
      j++;
    }
    return listaNineras;
  }

  //Devuelve lista de widgets para el listview de forma corta
  List <Widget> _crearItemsFast()
  {
    return nombre.map((itemNinera){
      return Column(
        children: <Widget>[
          ListTile(title: Text(itemNinera),),
          Divider(color: Colors.red,),
        ],
      );
    }).toList();
  
  }

  List <Widget> _estrellas(int cantidad)
  {
    List<Widget> listaEstrellas= new List<Widget>();
    for(int k=0; k<=cantidad; k++)
    {
        listaEstrellas.add(Icon(Icons.star, color: Colors.yellow));
    }
    return listaEstrellas;
  }
 
}