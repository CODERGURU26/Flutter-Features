import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Dialog Box Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Dismiss on tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(20),
          content: CustomDialogContent(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Dialog Box Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showCustomDialog(context),
          child: Text('Show Custom Dialog'),
        ),
      ),
    );
  }
}

class CustomDialogContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          'https://example.com/image.jpg', // Replace with your image URL
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16),
        Text(
          'This is a custom dialog box!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
