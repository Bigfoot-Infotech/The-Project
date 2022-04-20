import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:the_project/ui/items/item_destination.dart';
import 'package:the_project/ui/items/item_new_users.dart';


class NewUsersGrid extends StatelessWidget {

  final List<String> elements = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight","Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "A Million Billion Trillion", "A much, much longer text that will still fit"];

  NewUsersGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 230,
      child: GridView.extent(
          maxCrossAxisExtent: 60.0,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: elements.map((el) =>   Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.25), // border color
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(2), // border width
              child: Container( // or ClipRRect if you need to clip the content
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:DecorationImage(image: AssetImage("images/splash.jpg"),
                  fit: BoxFit.cover), // inner circle color
                ),
                child: Container(), // inner content
              ),
            ),
          ),
          ).toList()
      ),
    );
  }
}
