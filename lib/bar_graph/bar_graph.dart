import 'package:binify/bar_graph/bar_data.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyBarGraph extends StatefulWidget {
  final List<double> monthlySummary;
  const MyBarGraph({super.key, required this.monthlySummary});

  @override
  State<MyBarGraph> createState() => _MyBarGraphState();
}

class _MyBarGraphState extends State<MyBarGraph> {
  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
  janAmount: (widget.monthlySummary.length > 0) ? widget.monthlySummary[0] : 0, 
  febAmount: (widget.monthlySummary.length > 1) ? widget.monthlySummary[1] : 0, 
  marAmount: (widget.monthlySummary.length > 2) ? widget.monthlySummary[2] : 0, 
  aprAmount: (widget.monthlySummary.length > 3) ? widget.monthlySummary[3] : 0, 
  mayAmount: (widget.monthlySummary.length > 4) ? widget.monthlySummary[4] : 0);


    myBarData.initializeBarData();
    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      gridData: FlGridData(show: false),
      borderData: FlBorderData(show: false),
      titlesData: FlTitlesData(
        show: true,
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles)),
      ),
      barGroups: myBarData.barData.map((data) => BarChartGroupData(
        x: data.x,
        barRods: [
          BarChartRodData(
            toY: data.y, 
            color: Color(0xff4E5FB4), 
            width: 30, 
            borderRadius: BorderRadius.circular(5),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 100,
              color: Colors.white
            )
          )
        ]
      )).toList(),
    ));
  }
}

Widget getBottomTitles (double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontFamily: "poppinsmedium",
    fontSize: 12
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Jan', style: style);
    break;
    case 1:
      text = const Text('Feb', style: style);
    break;
    case 2:
      text = const Text('Mar', style: style);
    break;
    case 3:
      text = const Text('Apr', style: style);
    break;
    case 4:
      text = const Text('May', style: style);
    break;
    default:
      text = const Text('', style: style);
    break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}