import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_facts/config/app_routes.dart';

main(List<String> args) {
  runApp(
    Main(),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.appRoutes,
      theme: ThemeData(
        primaryColor: Colors.grey[600],
      ),
    );
  }
}
