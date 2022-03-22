import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MainRappiConceptApp());
}

class MainRappiConceptApp extends StatelessWidget {
  const MainRappiConceptApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RappiConcept(),
    );
  }
}
