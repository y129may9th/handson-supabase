import 'package:flutter/material.dart';
import 'package:my_chat_app/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // TODO: ここにSupabaseのURLとAnon Keyを入力
    url: 'https://yhqbpwfbaeehedoanrlk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlocWJwd2ZiYWVlaGVkb2FucmxrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODE5ODU1MzMsImV4cCI6MTk5NzU2MTUzM30.sLSrLKUSzDiJNnHcGS43CUc5fmTstnbvb61GGn4Ut6Y',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'チャットアプリ',
      theme: ThemeData.light().copyWith(
        primaryColorDark: Colors.orange,
        appBarTheme: const AppBarTheme(
          elevation: 1,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        primaryColor: Colors.orange,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: const TextStyle(
            color: Colors.orange,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
            ),
          ),
          focusColor: Colors.orange,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.orange,
              width: 2,
            ),
          ),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
