import 'package:app/providers/cart_provider.dart';
import 'package:app/providers/favourite_provider.dart';
import 'package:app/screens/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_) =>CartProvider() ),
        ChangeNotifierProvider(create: (_) =>FavoriteProvider() )

      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Bottomnavbar(),
    );
  }
}
