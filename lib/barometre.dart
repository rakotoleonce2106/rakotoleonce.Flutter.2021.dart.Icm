import 'package:flutter/material.dart';

import 'bottonAppBarBas.dart';

class Barometre extends StatelessWidget {
  const Barometre({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outils de Base'),
      ),
      bottomNavigationBar: BottonAppBarBas(),
    );
  }
}
