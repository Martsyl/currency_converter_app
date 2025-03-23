import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rivana_class/currency_conveerter_cupertino_page.dart';
import 'package:rivana_class/currency_converter_material_page.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CurrencyConverterMaterialPage());
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: CurrencyConverter());
  }
}
