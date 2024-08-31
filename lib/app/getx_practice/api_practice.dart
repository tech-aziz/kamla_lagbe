import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPractice extends StatefulWidget {
  const ApiPractice({super.key});

  @override
  State<ApiPractice> createState() => _ApiPracticeState();
}

class _ApiPracticeState extends State<ApiPractice> {

  String data = '';

Future<void> getApiData()async{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  if(response.statusCode == 200){
    setState(() {
      data = json.decode(response.body)['title'];
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Api practice',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          TextButton.icon(
              onPressed: () {},
              label: Text(
                'show data',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
Text('${data}')
          ],
        ),
      ),
    );
  }
}
