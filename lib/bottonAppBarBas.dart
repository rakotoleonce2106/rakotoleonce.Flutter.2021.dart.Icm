import 'package:flutter/material.dart';

class BottonAppBarBas extends StatefulWidget {
  @override
  _BottonAppBarBasState createState() => _BottonAppBarBasState();
}

class _BottonAppBarBasState extends State<BottonAppBarBas> {
  List<String> categories = [
    "Accueil",
    "Parcours",
    "Outils Fondamentaux",
    "Adress de reference",
    "Profil"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.cyan[800],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategories(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.5),
              child: Container(
                margin: EdgeInsets.only(top: 20.0 / 4),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.5),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.access_alarms_outlined)),
            ),
            Padding(
              padding: const EdgeInsets.all(0.5),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index
                      ? Colors.orangeAccent
                      : Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
