import 'package:flutter/material.dart';  
import 'package:flutter_hooks/flutter_hooks.dart';  

class AddBookScreen extends HookWidget {  
  const AddBookScreen({Key? key}) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    final titleController = useTextEditingController();  
    final authorController = useTextEditingController();  

    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Add Book'),  
      ),  
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          children: [  
            TextField(  
              controller: titleController,  
              decoration: const InputDecoration(labelText: 'Title'),  
            ),  
            const SizedBox(height: 20),  
            TextField(  
              controller: authorController,  
              decoration: const InputDecoration(labelText: 'Author'),  
            ),  
            const SizedBox(height: 20),  
            ElevatedButton(  
              onPressed: () {  
                // Logic to add book  
                ScaffoldMessenger.of(context).showSnackBar(  
                  const SnackBar(content: Text('Book added successfully')),  
                );  
                Navigator.pop(context);  
              },  
              child: const Text('Add Book'),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}