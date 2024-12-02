import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tele_gen/plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // final result = await TermuxAPI.runCommand('termux-battery-status');
            // print('Termux Output: $result');

            // final response = await http.get(Uri.parse('http://localhost:8000/.termux'));
            // if (response.statusCode == 200) {
            //   print('Battery Status: ${response.body}');
            // } else {
            //   print('Error: ${response.statusCode}');
            // }

            try {
              final result = await Process.run('dart', ['example/writes.dart']);
              // print(result);
              print(result.stdout); // Displays the toast messa
              print(result.stderr);
            } catch (e) {
              print('Failed to run Python script: $e');
            }
          },
        ),
        body: const Center(
          child: Text('run'),
        ),
      ),
    );
  }
}
