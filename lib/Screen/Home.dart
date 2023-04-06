import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../Screen/Home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //buradan sonrası düzgün çalışıyor
        appBar: AppBar(
          title: Text("Ürünler"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Mobil Programlama"),
                  accountEmail: Text("destek@mobil.com.tr"),
                currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("images/icon_girl.png")),
                ),
               // ),
             // ),
              ListTile(leading: Icon(Icons.home),title: Text("Vitrin"),onTap: (){},),
              ListTile(leading: Icon(Icons.shopping_cart),title: Text("Dükkan"),onTap: (){},),
              ListTile(leading: Icon(Icons.favorite),title: Text("En yeniler"),onTap: (){},),
              Padding(
                padding: const EdgeInsets.all(14.0),
              child: Text("Kategoriler"),),
              ListTile(leading: Icon(Icons.label),title: Text("Günlük"),onTap: (){},),
              ListTile(leading: Icon(Icons.label),title: Text("Gezi"),onTap: (){},),
              ListTile(leading: Icon(Icons.label),title: Text("Tatil"),onTap: (){},),
            ],
          ),
        ),
        body: Container(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.black12,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.blue,
                  )
                ),
                title: Text("Dolap", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Haftanın ürünü"),
                leading: IconButton(
                  icon: Icon(Icons.account_balance_outlined),
                  onPressed: (){},
                  color: Colors.blue,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart_outlined),
                  onPressed: (){},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.black12,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    )
                ),
                title: Text("Koltuk", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Üçlü koltuk"),
                leading: IconButton(
                  icon: Icon(Icons.account_balance_outlined),
                  onPressed: (){},
                  color: Colors.blue,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart_outlined),
                  onPressed: (){},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Colors.black12,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    )
                ),
                title: Text("Masa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Altı kişilik ahşap"),
                leading: IconButton(
                  icon: Icon(Icons.account_balance_outlined),
                  onPressed: (){},
                  color: Colors.blue,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart_outlined),
                  onPressed: (){},
                ),
              ),
            )
          ],
        )));
  }
}
