import 'package:flutter/material.dart';  
import 'book_list_screen.dart'; // Ensure this import is correct if Book is defined here  

class BookDetailScreen extends StatelessWidget {  
  final Book book;  

  const BookDetailScreen({Key? key, required this.book}) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text(book.title),  
      ),  
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [  
            Text('Title: ${book.title}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),  
            const SizedBox(height: 10),  
            Text('Author: ${book.author}', style: const TextStyle(fontSize: 18)),  
          ],  
        ),  
      ),  
    );  
  }  
}