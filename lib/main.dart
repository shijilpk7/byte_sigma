import 'package:byte_sigma/models/view_model/common_data_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //add providers here
      create: (_) => CommonDataViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
