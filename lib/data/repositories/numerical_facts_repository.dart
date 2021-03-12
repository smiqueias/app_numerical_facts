import 'package:dio/dio.dart';
import 'package:number_facts/data/interfaces/i_repository.dart';

class NumericalFactsRepository implements INumericalFactsRepository {
  final Dio _dio;

  NumericalFactsRepository(this._dio);

  @override
  Future<String> mathFacts({String numberEnteredByUser}) async {
    final response = await _dio.get(
      'http://numbersapi.com/$numberEnteredByUser/math',
      options: Options(
        headers: {
          'Content-Type': 'text/plain; charset=utf-8',
        },
      ),
    );

    if (response.statusCode == 200) {
      return response.toString();
    } else {
      throw Exception();
    }
  }

  @override
  Future<String> triviaFacts({String numberEnteredByUser}) async {
    final response = await _dio.get(
      'http://numbersapi.com/$numberEnteredByUser',
      options: Options(
        headers: {
          'Content-Type': 'text/plain; charset=utf-8',
        },
      ),
    );

    if (response.statusCode == 200) {
      return response.toString();
    } else {
      throw Exception();
    }
  }

  @override
  Future<String> dateFacts({String month, String day}) async {
    final response = await _dio.get('numbersapi.com/$day/$month/date');

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception();
    }
  }
}
