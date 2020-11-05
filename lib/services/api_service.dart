import 'dart:convert';
import 'package:brasil_covid/models/states_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<State> _makeStateList(List lista) {
    List<State> stateList = lista.map<State>((json) {
      return State.fromJson(json);
    }).toList();

    return stateList;
  }

  Future<List<State>> getAllStates() async {
    http.Response response =
        await http.get("https://covid19-brazil-api.now.sh/api/report/v1");

    var decoded = json.decode(response.body);
    List listaStados = decoded["data"];

    return _makeStateList(listaStados);
  }

  Future<State> getStateByName(String name) async {
    State estado;
    http.Response response = await http
        .get("https://covid19-brazil-api.now.sh/api/report/v1/brazil/uf/$name");

    var decoded = json.decode(response.body);

    estado = State.fromJson(decoded);
    // print("!!!! estado ${estado.deaths}");
    return estado;
  }

  Future<String> getApiStatus() async {
    http.Response response =
        await http.get("https://covid19-brazil-api.now.sh/api/status/v1");

    var decoded = json.decode(response.body);

    return decoded["status"];
  }
}
