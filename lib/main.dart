import 'package:flutter/material.dart';
import 'package:loyiha_ishi_laza/model/mode_provider.dart';
import 'package:loyiha_ishi_laza/ui/screen.dart';
import 'package:loyiha_ishi_laza/ui/screen4.dart';
import 'package:provider/provider.dart';

void main() async {
  /*WidgetsFlutterBinding.ensureInitialized();
  final dataPath = await getApplicationDocumentsDirectory();
  Hive.init(dataPath.path);
  await Hive.openBox('myBox');
  Hive.registerAdapter(UserAdapter());*/
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ModelProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Screen(),
        'a': (context) => Screen4(),
      },
    );
  }
}
