import 'package:flutter/material.dart';
import 'package:maquete/ItemsHome.dart';
import 'package:maquete/iconEtText.dart';

import 'bottonAppBarBas.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.icone}) : super(key: key);
  final Iconn icone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ICM-1 Outils de base")),
        backgroundColor: Colors.cyan[800],
      ),
      bottomNavigationBar: BottonAppBarBas(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sommaire',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: iconns.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => ItemsHome(
                  iconns: iconns[index],
                  press: () => Navigator.pushNamed(context, icone.route),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
