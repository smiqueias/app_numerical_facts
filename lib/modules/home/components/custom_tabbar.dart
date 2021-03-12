import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';
import 'tab_body.dart';

class CustomTabBar extends GetView<HomeController> {
  final Size size;
  final GlobalKey<FormState> formKey;
  final numberInputController = TextEditingController();
  CustomTabBar({Key key, this.size, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            indicatorColor: Colors.greenAccent,
            indicatorWeight: 5,
            tabs: [
              Tab(
                text: 'Math',
              ),
              Tab(
                text: 'Trivia',
              ),
              Tab(
                text: 'Date',
              ),
            ],
          ),
          Obx(
            () => Container(
              height: size.height * 0.6,
              child: TabBarView(
                children: [
                  TabBody(
                    label: 'Math',
                    formKey: formKey,
                    text: controller.resultNumberInput.value,
                    textEditingController: numberInputController,
                  ),
                  TabBody(
                    label: 'Trivia',
                    text: controller.resultNumberInput.value,
                    textEditingController: numberInputController,
                  ),
                  TabBody(
                    label: 'Date',
                    text: controller.resultNumberInput.value,
                    textEditingController: numberInputController,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
