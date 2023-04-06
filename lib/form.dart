import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobilvizeson/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sipariş Ekranı"),
        centerTitle: true,
      ),

      // bundan sonrası buton için
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Adı Soyadı",
                icon: Icon(Icons.abc_outlined),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Adres',
                icon: Icon(Icons.account_balance_rounded),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Kart Numaraaaaası',
                  icon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            myBtn(context),
           ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Details();
            }
          ),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
