import 'dart:convert';

import 'package:flutter/services.dart';

class JsonHelper {
  Future<List<dynamic>> jsonParsing() async {
    String json =
        await rootBundle.loadString("assets/json_bank/post.json");
    List<dynamic> post = jsonDecode(json);

    return post;
  }

  Future<List<dynamic>> cartParsing() async {
    String json = await rootBundle.loadString("assets/json_bank/cart.json");
    List<dynamic> cart = jsonDecode(json);

    return cart;
  }


   Future<List<dynamic>> commentParsing() async {
    String json = await rootBundle.loadString("assets/json_bank/comments.json");
    List<dynamic> comments = jsonDecode(json);

    return comments;
  }


   Future<List<dynamic>> productParsing() async {
    String json = await rootBundle.loadString("assets/json_bank/product.json");
    List<dynamic> product = jsonDecode(json);

    return product;
  }


   Future<List<dynamic>> quoteParsing() async {
    String json = await rootBundle.loadString("assets/json_bank/quotes.json");
    List<dynamic> quote = jsonDecode(json);

    return quote;
  }


   Future<List<dynamic>> recipeParsing() async {
    String json = await rootBundle.loadString("assets/json_bank/recipes.json");
    List<dynamic> recipe = jsonDecode(json);

    return recipe;
  }


   Future<List<dynamic>> todoParsing() async {
    String json = await rootBundle.loadString("assets/json_bank/todos.json");
    List<dynamic> todo = jsonDecode(json);

    return todo;
  }

  
}
