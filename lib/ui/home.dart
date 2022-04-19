import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:the_project/ui/items/item_destination.dart';
import 'package:the_project/ui/lists/destination_grid.dart';


class HomeScreen extends StatefulWidget {

  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

   late TabController _tabController;


   @override
  void initState() {
//
     _tabController =  TabController(initialIndex: 0, length: 6, vsync: this);
      super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(height: 400,
                    width: double.infinity,
                    color: Colors.black,
                    child:Icon(Icons.play_arrow,size: 75,color: Colors.white,),
                  ),
                ),
                expandedHeight: 400,
              )
            ];
          },
          body: ListView(
            children: [

              SizedBox(height: 4,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.all(12),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        side: BorderSide(color: Colors.red)
                                      )
                                  ),
                                  elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                                  padding: MaterialStateProperty.resolveWith(
                                          (state) => EdgeInsets.symmetric(horizontal: 16, vertical: 18)),
                                  backgroundColor: MaterialStateProperty.resolveWith(
                                          (state) =>Colors.white)),
                              child: Text('Filters', style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold)),
                              onPressed: () {

                              },
                            ),
                            SizedBox(width: 12,),
                            ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(22.0),
                                          side: BorderSide(color: Colors.grey)
                                      )
                                  ),
                                  elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                                  padding: MaterialStateProperty.resolveWith(
                                          (state) => EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
                                  backgroundColor: MaterialStateProperty.resolveWith(
                                          (state) =>Colors.white)),
                              child: Row(
                                children: [
                                  Text('Search or Filter', style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold)),
                                  SizedBox(width: 12,),
                                  Icon(Icons.add_box,color: Colors.red,),

                                ],
                              ),
                              onPressed: () {

                              },
                            ),
                          ],
                        ),
                        Row(children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      // side: BorderSide(color: Colors.red)
                                    )
                                ),
                                elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                                padding: MaterialStateProperty.resolveWith(
                                        (state) => EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
                                backgroundColor: MaterialStateProperty.resolveWith(
                                        (state) =>Colors.white)),
                            child: Text('Grid view', style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold)),
                            onPressed: () {

                            },
                          ),
                          SizedBox(width: 16,),
                          ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      // side: BorderSide(color: Colors.red)
                                    )
                                ),
                                elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                                padding: MaterialStateProperty.resolveWith(
                                        (state) => EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
                                backgroundColor: MaterialStateProperty.resolveWith(
                                        (state) =>Colors.white)),
                            child: Text('Sort By', style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold)),
                            onPressed: () {
                              showModal();
                            },
                          )
                        ],),


                      ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                        child: DottedBorder(
                          color: Colors.blueGrey.shade300,
                          radius: Radius.circular(8),
                          strokeWidth:3,
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(' All '),
                          ),
                        )
                    ),
                    Tab(
                        child: DottedBorder(
                          color: Colors.blueGrey.shade300,
                          radius: Radius.circular(8),
                          strokeWidth: 3,
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(' Kathmandu '),
                          ),
                        )
                    ),
                    Tab(
                      child: DottedBorder(
                        color: Colors.blueGrey.shade300,
                        radius: Radius.circular(8),
                        strokeWidth: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Text(' Pokhara '),
                        ),
                      ),
                    ),
                    Tab(
                        child: DottedBorder(
                          color: Colors.blueGrey.shade300,
                          radius: Radius.circular(8),
                          strokeWidth: 3,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(' Mustang '),
                          ),
                        )
                    ),
                    Tab(
                      child: DottedBorder(
                        color: Colors.blueGrey.shade300,
                        radius: Radius.circular(8),
                        strokeWidth: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Text(' Khumbu '),
                        ),
                      ),
                    ),
                    Tab(
                      child: DottedBorder(
                        color: Colors.blueGrey.shade300,
                        radius: Radius.circular(8),
                        strokeWidth: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Text(' Manaslu '),
                        ),
                      ),
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
              SizedBox(height: 4,),

              DestinationGrid()
            ],
          ),
        ),
      ),
    );
  }

   void showModal() {
     showModalBottomSheet(
         context: context,
         builder: (context) {
           return StatefulBuilder(
               builder: (BuildContext context, StateSetter setState) {
                 return Container(
                   // decoration: BoxDecoration(
                   //   color: Colors.transparent,
                   //   borderRadius: BorderRadius.only(
                   //     topRight: Radius.circular(40.0),
                   //     topLeft: Radius.circular(40.0)
                   //   ),
                   // ),
                   color: Colors.grey.shade300,
                   padding: const EdgeInsets.only(left: 32.0, right: 15.0, top: 16.0,bottom: 32),

                   height: 300.0,
                   child: Column(
                     children: <Widget>[
                       Container(
                         padding: const EdgeInsets.only(left: 32.0, right: 15.0, top: 16.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text("Sort by", style: TextStyle(color: Colors.black,
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold)),
                             IconButton(icon: Icon(Icons.close,),
                               onPressed: (){
                                 Navigator.of(context).pop();
                               },)

                           ],
                         ),
                       ),


                       RadioListTile(
                         value: 1,
                         groupValue: 1,
                         contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                         activeColor: Colors.black,
                         onChanged: (value) {
                           setState(() {
                             Navigator.of(context).pop();
                           });
                         },
                         title: Text("Popularity",style: TextStyle(color: Colors.black),),
                       ),



                       RadioListTile(
                         value: 1,
                         groupValue: 0,
                         contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                         activeColor: Colors.black,
                         onChanged: (value) {
                           setState(() {
                             Navigator.of(context).pop();
                           });
                         },
                         title: Text("Date --  low to High",
                             style: TextStyle(color: Colors.black)),
                       ),
                     ],
                   ),
                 );
               });
         });
   }

}
