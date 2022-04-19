import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';


class ItemTodaysPick extends StatelessWidget {
  const ItemTodaysPick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ClipRRect(

              borderRadius:BorderRadius.circular(12),
              child: Stack(
                children: [


                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 2000),
                    firstChild:   Container(
                      height: 180,
                      decoration: new BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                            image:  AssetImage('images/splash.jpg',)
                        ),
                      ),
                    ),
                    secondChild:   Container(
                      height: 190,
                      decoration: new BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                            image:  AssetImage('images/splash.jpg',)
                        ),
                      ),
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 70),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            "Visit Kathmandu",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],),
                  ),



                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 130),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          color: Colors.white, icon: Icon(Icons.visibility),),
                        Text(
                          "1111 views",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
