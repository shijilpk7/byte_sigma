import 'package:byte_sigma/screens/homepage/components/tabbar_body.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePageTabBar extends StatefulWidget {
  const HomePageTabBar({Key? key}) : super(key: key);

  @override
  _HomePageTabBarState createState() => _HomePageTabBarState();
}

class _HomePageTabBarState extends State<HomePageTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text('Batsmen',
          style: TextStyle(fontSize: getProportionateScreenHeight(10))),
    ),
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
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    // commonDataProvider?.readJson();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  // CommonDataViewModel? commonDataProvider;
  // @override
  // void didChangeDependencies() {
  //   commonDataProvider =
  //       Provider.of<CommonDataViewModel>(context, listen: false);
  //   super.didChangeDependencies();
  // }

  final searchvalue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
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
                      controller: _tabController,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimaryColor),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      tabs: myTabs),
                ).animate().fadeIn(delay: 1200.ms),
                SizedBox(height: getProportionateScreenHeight(10)),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      TabBarBody(),
                      TabBarBody(),
                      TabBarBody(),
                      TabBarBody(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
