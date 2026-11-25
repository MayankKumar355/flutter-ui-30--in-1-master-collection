import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'Bmi Calculator/provider.dart';
import 'Joke Generator/Provider Services/provider_services.dart';
import 'Universe UI/Screen/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('todos');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BMIProvider()),
        ChangeNotifierProvider(create: (_) => JokeProviderServices())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To Do App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const UniversHomePage(),
      ),
    );
  }
}