import 'package:flutter/material.dart';
import 'package:json_data_parsing/provider/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    var pw = context.watch<JsonProvider>();
    var pr = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME Page"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: pw.title.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              switch (pr.title[index]) {
                case "cart":
                  Navigator.pushNamed(context, 'cart_page');
                  break;
                case "comment":
                  Navigator.pushNamed(context, 'comment_page');
                  break;
                case "product":
                  Navigator.pushNamed(context, 'product_page');
                  break;
                case "quote":
                  Navigator.pushNamed(context, 'quote_page');
                  break;
                case "recipe":
                  Navigator.pushNamed(context, 'recipe_page');
                  break;
                case "todo":
                  Navigator.pushNamed(context, 'todo_page');
                  break;
                default:
                  debugPrint("Invalid title: ${pr.title[index]}");
              }
            },
            child: Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow,
                    blurRadius: 3
                  )
                ],
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                  child: Text(
                pr.title[index],
                style: TextStyle(fontSize: 20),
              )),
            ),
          );
        },
      ),
    );
  }
}
