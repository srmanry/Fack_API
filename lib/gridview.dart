import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

List titlelist = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
];

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: titlelist.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            color: Colors.green,
            child: Center(
              child: Text(titlelist[index]),
            ),
          );
        },
      ),
    );
  }
}
