import 'package:flutter/material.dart';
import 'package:json_data_parsing/provider/provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JsonProvider>().get_cart();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<JsonProvider>();
    var pr = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("cart page"),
      ),

      body: ListView.builder(
        itemCount: pw.cartdata.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.cartdata[index]['products']),
            
          );
        },
      ),
    );
  }
}