import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:number_facts/data/interfaces/i_repository.dart';
import 'package:number_facts/data/repositories/numerical_facts_repository.dart';
import 'package:number_facts/modules/home/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(Dio());
    Get.put<INumericalFactsRepository>(NumericalFactsRepository(Get.find()));
    Get.put<HomeController>(HomeController(Get.find()));
  }
}
