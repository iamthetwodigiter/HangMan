import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hangman/homepage.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('resources');
  if (Hive.box('resources').isEmpty) {
    Hive.box('resources').put('hints', 2);
    Hive.box('resources').put('high-score', 1);
  }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Josefin'),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
