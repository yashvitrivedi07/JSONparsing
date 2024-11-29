import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

class Todos extends StatefulWidget {
  const Todos({super.key});

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JsonProvider>().get_todo();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<JsonProvider>();
    var pr = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("To do page"),
      ),

      body: ListView.builder(
        itemCount: pw.cartdata.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.cartdata[index]['todo']),
            subtitle: Text(pr.cartdata[index]['completed']),
         
            leading: Text(pr.cartdata[index]['id'].toString()),
          );
        },
      ),
    );
  }
}