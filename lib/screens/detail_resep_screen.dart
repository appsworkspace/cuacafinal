import 'package:flutter/material.dart';

class DetailResepScreen extends StatefulWidget {
  final String? title;
  final String? image;
  const DetailResepScreen({this.title, this.image, Key? key}) : super(key: key);

  @override
  State<DetailResepScreen> createState() => _DetailResepScreenState();
}

class _DetailResepScreenState extends State<DetailResepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Card(
            child: Column(
              children: [
                Image.network('${widget.image}'),
                Text('title'),
                Text('subtitle'),
                Text('description'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
