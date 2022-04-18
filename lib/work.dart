import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";

class Work extends StatefulWidget {
  Work(
    this.name,
    this.email,
  );
  String name;
  String email;

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("${widget.name}"),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.email_sharp),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("${widget.email}"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
