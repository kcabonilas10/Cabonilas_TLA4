import 'package:cabonilas_tla4/screens/book_details_screen.dart';
import 'package:flutter/material.dart';  

class Book {  
  final String title;  
  final String author;  

  Book({required this.title, required this.author});  
}

class BookListScreen extends StatefulWidget {  
  const BookListScreen({Key? key}) : super(key: key);  

  @override  
  _BookListScreenState createState() => _BookListScreenState();  
}  

class _BookListScreenState extends State<BookListScreen> {  
  final List<Book> books = [  
    Book(title: "1984", author: "George Orwell"),  
    Book(title: "To Kill a Mockingbird", author: "Harper Lee"),  
    Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald"),  
  ];  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Book List'),  
      ),  
      body: ListView.builder(  
        itemCount: books.length,  
        itemBuilder: (context, index) {  
          return ListTile(  
            title: Text(books[index].title),  
            subtitle: Text(books[index].author),  
            onTap: () {  
              Navigator.push(  
                context,  
                MaterialPageRoute(  
                  builder: (context) => BookDetailScreen(book: books[index],)
                ),  
              );  
            },  
          );  
        },  
      ),  
    );  
  }  
}