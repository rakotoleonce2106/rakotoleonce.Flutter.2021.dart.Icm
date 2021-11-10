import 'package:flutter/material.dart';

class Iconn {
  final Color colors;
  final String image, title, route;
  final int id;

  Iconn({this.image, this.title, this.id, this.colors, this.route});
}

List<Iconn> iconns = [
  Iconn(
    id: 1,
    title: "Test Musculaire",
    image: 'assets/muscle-icon-g20fbe4ebb_640.png',
    colors: Colors.lightBlue[400],
    route: '1',
  ),
  Iconn(
    id: 2,
    title: "Les trois cerveau",
    image: 'assets/cerveau.png',
    colors: Colors.cyan[800],
    route: '1',
  ),
  Iconn(
    id: 3,
    title: "Pré-tests",
    image: 'assets/test.png',
    colors: Colors.blue[600],
    route: '2',
  ),
  Iconn(
      id: 4,
      title: "CEN/CEP",
      image: 'assets/poignee-de-main.png',
      colors: Colors.teal[200],
      route: '1'),
  Iconn(
    id: 5,
    title: "Baromètre \ du comportement",
    image: 'assets/Barometre.png',
    colors: Colors.teal[600],
    route: '2',
  ),
  Iconn(
    id: 6,
    title: "Protocole d'entrainement",
    image: 'assets/parametres.png',
    colors: Colors.cyan[900],
    route: '1',
  )
];
