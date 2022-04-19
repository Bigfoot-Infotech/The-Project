import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';


class ItemNotice extends StatelessWidget {
  const ItemNotice({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              HoverCrossFadeWidget(
                duration: Duration(milliseconds: 2000),
                firstChild:   Container(
                  height: 80,
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
                  height: 100,
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
          margin: EdgeInsets.only(left: 8),
          child: Text(
            "Travel medical insurance. We cover people from all over the world, while outside their home country.",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        // side: BorderSide(color: Colors.red)
                    )
                ),
                elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                padding: MaterialStateProperty.resolveWith(
                        (state) => EdgeInsets.symmetric(horizontal: 16, vertical: 18)),
                backgroundColor: MaterialStateProperty.resolveWith(
                        (state) =>Colors.red)),
            child: Text('Get insured', style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold)),
            onPressed: () {

            }),
        ),


            ],
          ),
        ),
      ),
    );
  }
}
