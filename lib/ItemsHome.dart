import 'package:flutter/material.dart';

import 'iconEtText.dart';

// un grid avec icon
class ItemsHome extends StatelessWidget {
  const ItemsHome({Key key, this.iconns, this.press}) : super(key: key);
  final Iconn iconns;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0.5),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: iconns.colors,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${iconns.id}",
              child: Image.asset(iconns.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(iconns.title),
          ),
        ],
      ),
    );
  }
}
