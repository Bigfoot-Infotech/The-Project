import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:the_project/ui/lists/destination_grid.dart';
import 'package:the_project/ui/lists/new_users_grid.dart';

class DestinationDetailScreen extends StatefulWidget {

  static String routeName = '/home/destination/detail';
  const DestinationDetailScreen({Key? key}) : super(key: key);

  @override
  State<DestinationDetailScreen> createState() => _DestinationDetailScreenState();
}

class _DestinationDetailScreenState extends State<DestinationDetailScreen> with TickerProviderStateMixin{

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
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 359,
                  decoration: new BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        image:  AssetImage('images/splash.jpg',)
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
                              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          ' city of temple',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white,letterSpacing: 0.6),
                        ),
                      )
                    ],),
                ),

              ],
            ),
            SizedBox(height: 8,),
            new TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              indicator: BubbleTabIndicator(
                indicatorHeight: 35.0,
                indicatorColor: Colors.blueAccent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                // Other flags
                // indicatorRadius: 1,
                // insets: EdgeInsets.all(1),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12)
              ),
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Events'),
                Tab(text: 'Photos'),
                Tab(text: 'Videos'),
               Tab(text: 'People'),
                Tab(text: 'Places'),

              ],
            ),
            SizedBox(height: 8,),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: TabBarView(
                    controller: _tabController,
                    children: [
                  DestinationGrid(),
                  DestinationGrid(),
                  DestinationGrid(),
                  DestinationGrid(),
                  NewUsersGrid(),
                  DestinationGrid(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
