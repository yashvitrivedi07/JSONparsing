import 'package:flutter/material.dart';
import 'package:json_data_parsing/provider/provider.dart';
import 'package:provider/provider.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JsonProvider>().get_comment();
  }
  @override
  Widget build(BuildContext context) {
    var pw = context.watch<JsonProvider>();
    var pr = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("comments page"),
      ),

      body: ListView.builder(
        itemCount: pw.cartdata.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pr.cartdata[index]['body']),
            subtitle: Text(pr.cartdata[index]['likes'].toString()),
            trailing: Text(pr.cartdata[index]['postId'].toString()),
            
          );
        },
      ),
    );
  }
}