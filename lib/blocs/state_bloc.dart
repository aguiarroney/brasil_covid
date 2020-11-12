import 'dart:async';

import 'package:brasil_covid/models/states_model.dart';
import 'package:brasil_covid/services/api_service.dart';

class StateBloc {
  ApiService _api;
  // List<StateModel> _states;

  final StreamController<List<StateModel>> _statesController =
      StreamController<List<StateModel>>();
  Stream get outList => _statesController.stream;
  Sink get inList => _statesController.sink;

  StateBloc() {
    _api = ApiService();
  }

  void getStateList() {
    _api.getAllStates().then((value) {
      inList.add(value);
      return value;
    });
  }

  void dispose() {
    _statesController.close();
  }
}
