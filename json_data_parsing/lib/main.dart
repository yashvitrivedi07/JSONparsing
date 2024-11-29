import 'package:flutter/material.dart';
import 'package:json_data_parsing/provider/provider.dart';
import 'package:json_data_parsing/views/homePage/homePage.dart';
import 'package:json_data_parsing/views/pages/cartPage.dart';
import 'package:json_data_parsing/views/pages/commentsPage.dart';
import 'package:json_data_parsing/views/pages/productPage.dart';
import 'package:json_data_parsing/views/pages/quotesPage.dart';
import 'package:json_data_parsing/views/pages/recipesPage.dart';
import 'package:json_data_parsing/views/pages/todosPage.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => JsonProvider(),
        ),
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
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'cart_page': (context) => const CartPage(),
        'comment_page': (context) => const CommentsPage(),
        'product_page': (context) => const Product(),
        'quote_page': (context) => const Quotes(),
        'recipe_page': (context) => const Recipes(),
        'todo_page': (context) => const Todos(),
        
      },
    );
  }
}