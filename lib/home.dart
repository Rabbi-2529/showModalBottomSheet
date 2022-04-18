import 'package:flutter/material.dart';
import 'package:loginpage/page1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future _showmodel() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page1()));
                      },
                      icon: Icon(Icons.add)),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        )),
      ),
      onPressed: (() {
        _showmodel();
      }),
      child: Text(
        "Click",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    )));
  }
}
