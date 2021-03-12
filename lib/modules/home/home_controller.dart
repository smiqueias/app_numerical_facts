import 'package:get/get.dart';
import 'package:number_facts/data/interfaces/i_repository.dart';

class HomeController extends GetxController {
  final INumericalFactsRepository _repository;

  HomeController(this._repository);

  var resultNumberInput =
      'Give a number and i will tell you a interesting fact 😎'.obs;

  void fetchMathFacts(String numberEnteredByUser) {
    _repository
        .mathFacts(
          numberEnteredByUser: numberEnteredByUser,
        )
        .then((value) => resultNumberInput(value));
  }

  void fetchTriviaFacts(String numberEnteredByUser) {
    _repository
        .triviaFacts(
          numberEnteredByUser: numberEnteredByUser,
        )
        .then((value) => resultNumberInput(value));
  }
}
