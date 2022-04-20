import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:the_project/ui/lists/new_users_grid.dart';


class ItemNewUsers extends StatelessWidget {
  const ItemNewUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 230,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ClipRRect(
          borderRadius:BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SizedBox(height:2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8,),
                    Icon(Icons.airplanemode_active_rounded,color: Colors.blue,size: 16,),
                    SizedBox(width: 8,),
                    Text(
                      "Travelling today (21)",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
                Divider(),
                NewUsersGrid()


              ],
            ),
          ),
        ),
      ),
    );
  }
}
