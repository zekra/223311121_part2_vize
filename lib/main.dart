import 'package:flutter/material.dart';
import 'package:mobilvizeson/form.dart';
import 'Screen/Home.dart';
import 'Screen/Dashboard.dart';
import 'Screen/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // bu bölüm home dart dosyası için geçerli
     // title: 'My Flutter App',
    //  themeMode: ThemeMode.system,
      //debugShowCheckedModeBanner: false,
      //home: Home()
   // );

      // bu bölüm form dosyasını ve details dosyasını çalıştırmak için gerekli
        title: 'Push Pop',
        theme: ThemeData.light(),
     home: MyForm());
  }
}

