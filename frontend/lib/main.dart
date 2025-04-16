import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hengym',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String message = 'Chargement...';

  @override
  void initState() {
    super.initState();
    fetchMessage();
  }

  Future<void> fetchMessage() async {
    try {
      // Remplace par l'IP de ton serveur si besoin
      final url = Uri.parse('http://192.168.0.5:8080/hello');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        setState(() {
          message = jsonData['message'];
        });
      } else {
        setState(() {
          message = 'Erreur serveur : ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        message = 'Erreur de connexion : $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hengym'),
      ),
      body: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
