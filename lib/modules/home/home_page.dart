import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_facts/modules/home/components/custom_text_span.dart';
import 'components/custom_tabbar.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  static const String ROUTE_PAGE = "/";
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color.fromRGBO(45, 51, 71, 1),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: size.width,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextSpan(),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: SingleChildScrollView(
                  child: CustomTabBar(
                    formKey: formKey,
                    size: size,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
