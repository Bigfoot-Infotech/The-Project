import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:the_project/ui/screens/destination_detail.dart';


class ItemDestination extends StatelessWidget {
  const ItemDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(DestinationDetailScreen.routeName);
      },
      child: SizedBox(
        height: 230,
        width: double.infinity,
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
                  alignment: Alignment.center,
                  children: [

                    HoverCrossFadeWidget(
                      duration: Duration(milliseconds: 2000),
                      firstChild:   Container(
                        height: 230,
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
                        height: 230,
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
                      child: Column(
                        children: [
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            "Kathmandu",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            ' city of temple',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white,letterSpacing: 0.6),
                          ),
                        )
                      ],),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 180,bottom: 180),
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                            color: Colors.white, icon: Icon(Icons.wifi),),

                          Text(
                            "  10 \n mbps",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 180, left: 16),
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                              color: Colors.yellow.shade800, icon: Icon(Icons.wb_sunny),),
                          Text(
                            "20 \n C",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
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
      ),
    );
  }
}
