abstract class INumericalFactsRepository {
  Future<String> mathFacts({String numberEnteredByUser});
  Future<String> triviaFacts({String numberEnteredByUser});
  Future<String> dateFacts({String month, String day});
}
