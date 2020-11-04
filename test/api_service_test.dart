import 'package:brasil_covid/services/api_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("esperado receber a string 'ok' para o status da api", () {
    final String mock = "ok";
    final ApiService api = ApiService();
    Future<String> result;

    result = api.getApiStatus();

    expect(result.toString(), mock);
  });
}
