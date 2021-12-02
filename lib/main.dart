import 'package:flutter/material.dart';
import 'invoice_model.dart';
import 'package:provider/provider.dart';
import 'invoice_model.dart';
import 'mainPage.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => InvoiceModel(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MainPage(),
    );
  }
}

