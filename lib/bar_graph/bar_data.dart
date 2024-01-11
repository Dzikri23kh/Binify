import 'package:binify/bar_graph/individual_bar.dart';

class BarData {
  final double janAmount;
  final double febAmount;
  final double marAmount;
  final double aprAmount;
  final double mayAmount;

  BarData ({
    required this.janAmount,
    required this.febAmount,
    required this.marAmount,
    required this.aprAmount,
    required this.mayAmount,
  });

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: janAmount),
      IndividualBar(x: 1, y: febAmount),
      IndividualBar(x: 2, y: marAmount),
      IndividualBar(x: 3, y: aprAmount),
      IndividualBar(x: 4, y: mayAmount),
    ];
  }

}