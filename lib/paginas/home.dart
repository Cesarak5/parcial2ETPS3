import 'package:parcial2_2514342018/json/menucombos.dart';
import 'package:flutter/material.dart';
import 'package:parcial2_2514342018/temas/colores.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gris,
      appBar: barra(),
      body: cuerpoTortas(),
    );
  }
}

barra() {
  return AppBar(
    backgroundColor: gris,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Tortas el zarco",
              style: TextStyle(
                  fontSize: 20, color: negro, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ],
    ),
  );
}

cuerpoTortas() {
  return SingleChildScrollView(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 0),
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/logo.png"))),
          ),
        ),
      ),

      SizedBox(
        height: 20,
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Busqueda()],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30, top: 0),
        child: Text(
          "Combos",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: negro,
          ),
        ),
      ),
      SingleChildScrollView(),
      //segundo bloque menu centro
      SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: List.generate(combos.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(combos[index]['img']),
                                fit: BoxFit.contain),
                            color: primario,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        combos[index]['titulo'],
                        style: TextStyle(
                            color: negro,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          combos[index]['description'],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: gris,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      )
    ]),
  );
}

Widget Busqueda() {
  return Padding(
    padding: const EdgeInsets.only(top: 0),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(FeatherIcons.search),
            hintText: "Busca tu combo...",
            fillColor: gris,
            filled: true),
      ),
    ),
  );
}
