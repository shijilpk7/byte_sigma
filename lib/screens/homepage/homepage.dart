import 'package:byte_sigma/constants.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/homepage_tabbar.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen to get the screen height and width
    SizeConfig().init(context);
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
            centerTitle: true),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            //tabindex 1:ODI, 2:TEST, 3:T20
            HomePageTabBar(tabIndex: 1),
            HomePageTabBar(tabIndex: 2),
            HomePageTabBar(tabIndex: 3),
          ],
        ),
      ),
    );
  }
}
