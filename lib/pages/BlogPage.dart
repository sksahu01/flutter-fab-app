

import 'package:flutter/material.dart';


class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
   
      home: Scaffold(
        appBar: AppBar(
          title: Text("Blog"),
        ),
      
      ),
    );
  }
}
  
