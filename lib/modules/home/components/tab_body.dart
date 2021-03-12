import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class TabBody extends GetView<HomeController> {
  final GlobalKey<FormState> formKey;
  final String label;
  final String text;
  final TextEditingController textEditingController;
  final Size size;

  const TabBody(
      {Key key,
      this.formKey,
      this.label,
      this.textEditingController,
      this.size,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Form(
                    key: formKey,
                    child: Expanded(
                      child: Container(
                        color: Color.fromRGBO(58, 58, 59, 1),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          cursorColor: Colors.white,
                          controller: textEditingController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a number',
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                switch (label) {
                                  case 'Math':
                                    controller.fetchMathFacts(
                                      textEditingController.text,
                                    );
                                    break;
                                  case 'Trivia':
                                    controller.fetchTriviaFacts(
                                      textEditingController.text,
                                    );
                                    break;
                                  case 'Date':
                                    print('date');
                                    break;
                                  default:
                                }
                              },
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
