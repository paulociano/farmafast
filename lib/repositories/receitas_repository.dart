import 'dart:io';

import 'package:flutter/material.dart';

class ReceitasRepository extends ChangeNotifier {
  File _receita = File('');

  File get receita => _receita;

  void setImage(File receita) {
    _receita = receita;
    notifyListeners();
  }
}
