import 'package:flutter/material.dart';
import 'package:json_data_parsing/provider/provider.dart';
import 'package:provider/provider.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JsonProvider>().get_recipe();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<JsonProvider>();
    var pr = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("recipe page"),
      ),

      body: ListView.builder(
        itemCount: pw.cartdata.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.cartdata[index]['name']),
            
            leading: Text(pr.cartdata[index]['id'].toString()),
          );
        },
      ),
    );
  }
}