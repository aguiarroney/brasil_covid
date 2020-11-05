import 'dart:convert';
import 'package:brasil_covid/models/states_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<StateModel> _makeStateList(List lista) {
    List<StateModel> stateList = lista.map<StateModel>((json) {
      return StateModel.fromJson(json);
    }).toList();

    return stateList;
  }

  Future<List<StateModel>> getAllStates() async {
    http.Response response =
        await http.get("https://covid19-brazil-api.now.sh/api/report/v1");

    var decoded = json.decode(response.body);
    List listaStados = decoded["data"];

    return _makeStateList(listaStados);
  }

  Future<StateModel> getStateByName(String name) async {
    StateModel estado;
    http.Response response = await http
        .get("https://covid19-brazil-api.now.sh/api/report/v1/brazil/uf/$name");

    var decoded = json.decode(response.body);

    estado = StateModel.fromJson(decoded);
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
