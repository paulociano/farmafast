import 'package:farmafast/repositories/receitas_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ReceitasRepository(),
    child: const MyApp(),
  ));
}
