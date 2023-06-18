import 'package:byte_sigma/screens/homepage/components/tabbar_body.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class HomePageTabBar extends StatelessWidget {
  int? tabIndex;
  HomePageTabBar({Key? key, this.tabIndex}) : super(key: key);

  final List<Tab> myTabs = <Tab>[
    Tab(
        child: Text('Batsmen',
            style: TextStyle(fontSize: getProportionateScreenHeight(10)))),
    Tab(
      child: Text('Bowlers',
          style: TextStyle(fontSize: getProportionateScreenHeight(10))),
    ),
    Tab(
      child: Text('All-Rounders',
          style: TextStyle(fontSize: getProportionateScreenHeight(10))),
    ),
    Tab(
      child: Text('Teams',
          style: TextStyle(fontSize: getProportionateScreenHeight(10))),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DefaultTabController(
        length: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(10)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                    child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kPrimaryColor),
                        unselectedLabelColor: Colors.grey,
                        tabs: myTabs),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        //subtabindex 1:batsmen, 2:bowlers, 3:all-rounders, 4:teams
                        TabBarBody(subtabIndex: 1, tabIndex: tabIndex),
                        TabBarBody(subtabIndex: 2, tabIndex: tabIndex),
                        TabBarBody(subtabIndex: 3, tabIndex: tabIndex),
                        TabBarTeamsBody(tabIndex: tabIndex),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
