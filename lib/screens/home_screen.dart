import 'package:flutter/material.dart';  
import 'book_list_screen.dart';  
import 'add_book_screen.dart';  
import 'settings_screen.dart';  

class HomeScreen extends StatelessWidget {  
  const HomeScreen({Key? key}) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Book Manager'),  
      ),  
      body: Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [  
            ElevatedButton(  
              onPressed: () {  
                Navigator.push(  
                  context,  
                  MaterialPageRoute(builder: (context) => const BookListScreen()),  
                );  
              },  
              child: const Text('View Books'),  
            ),  
            const SizedBox(height: 20),  
            ElevatedButton(  
              onPressed: () {  
                Navigator.push(  
                  context,  
                  MaterialPageRoute(builder: (context) => const AddBookScreen()),  
                );  
              },  
              child: const Text('Add Book'),  
            ),  
            const SizedBox(height: 20),  
            ElevatedButton(  
              onPressed: () {  
                Navigator.push(  
                  context,  
                  MaterialPageRoute(builder: (context) => const SettingsScreen()),  
                );  
              },  
              child: const Text('Settings'),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}