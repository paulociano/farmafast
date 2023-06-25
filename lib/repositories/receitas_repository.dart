import 'package:flutter/material.dart';

class ReceitasRepository extends ChangeNotifier {
  String _receita = '';

  String get receita => _receita;

  void setImage(String receita) {
    _receita = receita;
    notifyListeners();
  }
}
