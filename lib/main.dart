import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:note_app_with_rest_api/services/note_service.dart';
import 'package:note_app_with_rest_api/views/note_list.dart';

void setUpLocator() {
  GetIt.I.registerLazySingleton(() => NoteService());
}

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Color(0xFF004D40),
        primaryColor: Color(0xFF004D40),
        primaryColorDark: Color(0xFF00251a),
        accentColor: Color(0xFF39796b),
        primaryColorLight: Color(0xFF39796b),
        // accentColor:
      ),
      home: NoteList(),
    );
  }
}
