import 'package:flutter/material.dart';
import 'package:the_project/ui/items/item_destination.dart';


class DestinationGrid extends StatelessWidget {

  final List<String> elements = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "A Million Billion Trillion", "A much, much longer text that will still fit"];

   DestinationGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      child: GridView.extent(
          maxCrossAxisExtent: 300.0,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: elements.map((el) => ItemDestination()
          ).toList()
      ),
    );
  }
}
