import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Circular Chart (2.Hole Label)';
  final _size = Size(400.0, 400.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedCircularChart(
          size: _size,
          initialChartData: <CircularStackEntry>[
            CircularStackEntry(
              <CircularSegmentEntry>[
                CircularSegmentEntry(75.00, Color(0xFFC41A3B), rankKey: 'Completed'),
                CircularSegmentEntry(25.00, Color(0xFF1B1F32), rankKey: 'Remaining'),
              ],
              rankKey: 'Progress',
            ),
          ],
          chartType: CircularChartType.Radial,
          // chartType: CircularChartType.Pie,
          // Pie Type Chart Label Not Show
          percentageValues: true,
          holeLabel: '1/4',
          labelStyle: TextStyle(
            color: Color(0xFF1B1F32),
            fontWeight: FontWeight.bold,
            fontSize: 48.0),
        ),
      ),
    );
  }
}
