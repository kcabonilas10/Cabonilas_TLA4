import 'package:flutter/material.dart';  
import 'package:flutter_hooks/flutter_hooks.dart';  

class SettingsScreen extends HookWidget {  
  const SettingsScreen({Key? key}) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    final isDarkMode = useState(false);  

    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Settings'),  
      ),  
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          children: [  
            Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: [  
                const Text('Dark Mode'),  
                Switch(  
                  value: isDarkMode.value,  
                  onChanged: (value) {  
                    isDarkMode.value = value;  
                    // Logic to change theme  
                  },  
                ),  
              ],  
            ),  
            // Add more settings options here  
          ],  
        ),  
      ),  
    );  
  }  
}