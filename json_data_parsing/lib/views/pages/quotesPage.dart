import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JsonProvider>().get_quote();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<JsonProvider>();
    var pr = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Quote page"),
      ),

      body: ListView.builder(
        itemCount: pw.cartdata.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.cartdata[index]['quote']),
            subtitle: Text(pr.cartdata[index]['author']),
            
            leading: Text(pr.cartdata[index]['id'].toString()),
          );
        },
      ),
    );
  }
}