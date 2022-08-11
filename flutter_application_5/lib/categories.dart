import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F28),
      //center title to mke the title in the center of the appbar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [Icon(Icons.search)],
      ),

      body: Column(children: [
        Container(
          color: const Color(0xFF1E1F28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: const [
                Text("Sales", style: TextStyle(color: Colors.white))
              ]),
              Row(children: const [
                Text("Up to 50% off", style: TextStyle(color: Colors.white))
              ])
            ],
          ),
        ),
        GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            Container(child: data(const Text("New arrival"))),
            Container(child: data2(Image.asset("images/image.png"))),
            Container(child: data(const Text("Clothes"))),
            Container(child: data2(Image.asset("images/image 3.png"))),
            Container(child: data(const Text("Furniture"))),
            Container(child: data2(Image.asset("images/image 3.png"))),
            Container(child: data(const Text("Machines"))),
            Container(child: data2(Image.asset("images/image 4.1.png"))),
          ],
        )
      ]),
    );
  }
}

Widget data(Text text) {
  return Container(
    padding: const EdgeInsets.all(8),
    color: const Color(0xFF1E1F28),
    child:
        const Text('Text', style: TextStyle(fontSize: 20, color: Colors.white)),
  );
}

Widget data2(Image image) {
  return Container(
    padding: const EdgeInsets.all(8),
    color: const Color(0xFF1E1F28),
    child: Image.asset("Images/image.png"),
  );
}
