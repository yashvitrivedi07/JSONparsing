import 'package:flutter/material.dart';
import 'package:json_data_parsing/helper/json_helper.dart';

class JsonProvider with ChangeNotifier {
  List<dynamic> jsondata = [];
  List<dynamic> cartdata = [];
  List<dynamic> commentsdata = [];
  List<dynamic> prodata = [];
  List<dynamic> quotedata = [];
  List<dynamic> recipedata = [];
  List<dynamic> tododata = [];

  List<String> title = [
    "cart",
    "comment",
    "product",
    "quote",
    "recipe",
    "todo",
  ];

  Future<void> get_post() async {
    JsonHelper jh = JsonHelper();
    jsondata = await jh.jsonParsing();
    notifyListeners();
  }

  Future<void> get_cart() async {
    JsonHelper jh = JsonHelper();
    cartdata = await jh.cartParsing();
    notifyListeners();
  }

  Future<void> get_comment() async {
    JsonHelper jh = JsonHelper();
    commentsdata = await jh.commentParsing();
    notifyListeners();
  }

  Future<void> get_product() async {
    JsonHelper jh = JsonHelper();
    prodata = await jh.productParsing();
    notifyListeners();
  }

  Future<void> get_quote() async {
    JsonHelper jh = JsonHelper();
    quotedata = await jh.quoteParsing();
    notifyListeners();
  }

  Future<void> get_recipe() async {
    JsonHelper jh = JsonHelper();
    recipedata = await jh.recipeParsing();
    notifyListeners();
  }

  Future<void> get_todo() async {
    JsonHelper jh = JsonHelper();
    tododata = await jh.todoParsing();
    notifyListeners();
  }
}
