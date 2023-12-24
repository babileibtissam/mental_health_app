import 'package:flutter/material.dart';

class ItemData {
  final String name;
  final Color color;
  final String imagePath;

  ItemData({required this.name, required this.color, required this.imagePath});
}

final List<ItemData> items = [
  ItemData(
      name: 'Happy',
      color: const Color(0xFFEF5DA8),
      imagePath: 'assets/images/Happy.png'),
  ItemData(
      name: 'Calm',
      color: const Color(0xFFAEAFF7),
      imagePath: 'assets/images/Calm.png'),
  ItemData(
      name: 'Manic',
      color: const Color(0xFFA0E3E2),
      imagePath: 'assets/images/Relax.png'),
  ItemData(
      name: 'Angry',
      color: const Color(0xFFF09E54),
      imagePath: 'assets/images/Angry.png'),
  ItemData(
      name: 'Item 5',
      color: const Color(0xFFC3F2A6),
      imagePath: 'assets/images/Angry.png'),
];

class HorizontalListView extends StatelessWidget {
  final List<ItemData> items;

  HorizontalListView({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: Container(
            width: 60.0,
            height: 100.0,
            color: items[index].color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  items[index].imagePath,
                  width: 33.18,
                  height: 33.18,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
