import 'package:byte_sigma/constants.dart';
import 'package:byte_sigma/models/view_model/common_data_viewmodel.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/homepage_tabbar.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    Provider.of<CommonDataViewModel>(context, listen: false).loadJsonData();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[kPrimaryColor!, kSecondaryColor!])),
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: const Text('ODI').animate().fadeIn(delay: 900.ms)),
              Tab(child: const Text('TEST').animate().fadeIn(delay: 900.ms)),
              Tab(child: const Text('T20').animate().fadeIn(delay: 900.ms)),
            ],
          ),
          title: const Text('RANKING').animate().fadeIn(duration: 900.ms),
          centerTitle: true,
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePageTabBar(),
            HomePageTabBar(),
            HomePageTabBar(),
          ],
        ),
      ),
    );
  }
}
