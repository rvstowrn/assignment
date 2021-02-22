import 'package:assignment/pages/provider/calculation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/test_page.dart';
import 'pages/success_page.dart';
void main() => runApp(AppBase());

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      initialRoute: '/test',
      routes: {
        '/test': (context) {
          return ChangeNotifierProvider<CalculationProvider>(
            create: (context) => CalculationProvider(),
            child: TestPage(),
          ); 
        },
        '/success': (context) => SuccessPage()             // Animation Design
      },
    );
  }
}