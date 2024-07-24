import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Searchh(),));
}

class Searchh extends StatelessWidget {
  const Searchh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(decoration: InputDecoration(
        labelText: "Search here",
        suffixIcon: Icon(Icons.search)
      ),),
    );
  }
}
