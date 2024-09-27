import 'package:flutter/material.dart';  
import 'package:flutter_test/flutter_test.dart';  
import 'package:cabonilas_tla4/screens/home_screen.dart'; // Adjust the import to match your project structure  

void main() {  
  testWidgets('HomeScreen has navigation buttons', (WidgetTester tester) async {  
    // Build the HomeScreen widget  
    await tester.pumpWidget(  
      const MaterialApp(  
        home: HomeScreen(),  
      ),  
    );  

    // Verify if the 'View Books' button is displayed  
    expect(find.text('View Books'), findsOneWidget);  

    // Verify if the 'Add Book' button is displayed  
    expect(find.text('Add Book'), findsOneWidget);  

    // Verify if the 'Settings' button is displayed  
    expect(find.text('Settings'), findsOneWidget);  

    // Tap the 'View Books' button and trigger a frame  
    await tester.tap(find.text('View Books'));  
    await tester.pumpAndSettle();  

    // Verify if the navigation to BookListScreen occurs  
    expect(find.text('Book List'), findsOneWidget);  

    // Navigate back to HomeScreen  
    await tester.tap(find.byTooltip('Back'));  
    await tester.pumpAndSettle();  

    // Tap the 'Add Book' button and trigger a frame  
    await tester.tap(find.text('Add Book'));  
    await tester.pumpAndSettle();  

    // Verify if the navigation to AddBookScreen occurs  
    expect(find.text('Add Book'), findsOneWidget);  

    // Navigate back to HomeScreen  
    await tester.tap(find.byTooltip('Back'));  
    await tester.pumpAndSettle();  

    // Tap the 'Settings' button and trigger a frame  
    await tester.tap(find.text('Settings'));  
    await tester.pumpAndSettle();  

    // Verify if the navigation to SettingsScreen occurs  
    expect(find.text('Settings Screen'), findsOneWidget);  
  });  
}  