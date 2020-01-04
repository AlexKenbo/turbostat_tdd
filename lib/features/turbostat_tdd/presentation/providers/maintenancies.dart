import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:turbostat_tdd/features/turbostat_tdd/data/models/maintenance_model.dart';

class Maintenancies extends ChangeNotifier {
  final List<MaintenanceModel> _maintenancies = [];

  UnmodifiableListView<MaintenanceModel> get maintenancies =>
      UnmodifiableListView(_maintenancies);
  
  void add(MaintenanceModel model, String carId) {
    
  }
}
