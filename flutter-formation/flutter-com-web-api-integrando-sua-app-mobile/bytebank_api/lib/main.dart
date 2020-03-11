import 'package:bytebankapi/api/webclient.dart';
import 'package:flutter/material.dart';
import 'package:bytebankapi/style/app_theme.dart';
import 'package:bytebankapi/screens/dashboard.dart';

// void main() => runApp(ByteBankApp());
void main() {
  runApp(
    ByteBankApp(),
  );

  findAll().then((transactions) {
    print("new transactions $transactions");
  });
  //save(Contact("Ivo", 122545, id: 2)).then((id) {
  //getAllContacts().then((contacts) => debugPrint(contacts.toString()));
  //});
  /*_dao.deleteContact(1).then((test) {
    _dao.getAllContacts().then((contacts) {
      debugPrint(contacts.toString());
    });
  });*/
}

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightAppTheme(),
      darkTheme: darkAppTheme(),
      home: Dashboard(),
      debugShowCheckedModeBanner: true,
    );
  }
}
