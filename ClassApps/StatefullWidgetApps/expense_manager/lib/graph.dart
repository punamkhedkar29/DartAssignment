import 'package:expense_manager/home_model.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MaterialApp(
    home: PieChartPage(),
  ));
}

class PieChartPage extends StatelessWidget {
  final List<HomeModel> cardList = [
    HomeModel(
      date: "3 June | 11:50 AM",
      amount: "500",
      category: "Medicine",
      description: "Lorem Ipsum is simply dummy text of the ",
    ),
    HomeModel(
      date: "3 June | 11:50 AM",
      amount: "650",
      category: "Food",
      description: "Lorem Ipsum is simply dummy text of the ",
    ),
    HomeModel(
      date: "3 June | 11:50 AM",
      amount: "325",
      category: "Shopping",
      description: "Lorem Ipsum is simply dummy text of the ",
    ),
    HomeModel(
      date: "3 June | 11:50 AM",
      amount: "600",
      category: "Fuel",
      description: "Lorem Ipsum is simply dummy text of the ",
    ),
    HomeModel(
      date: "3 June | 11:50 AM",
      amount: "475",
      category: "Entertainment",
      description: "Lorem Ipsum is simply dummy text of the ",
    ),
  ];

  final List<Color> colorList = [
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(214, 38, 197, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pie Chart Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PieChart(
            PieChartData(
              sections: _getPieChartSections(),
              centerSpaceRadius: 50,
              borderData: FlBorderData(show: false),
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> _getPieChartSections() {
    double totalAmount = cardList.fold(
      0,
      (sum, item) => sum + double.parse(item.amount),
    );

    return List.generate(cardList.length, (index) {
      final percentage =
          (double.parse(cardList[index].amount) / totalAmount) * 100;

      return PieChartSectionData(
        color: colorList[index],
        value: double.parse(cardList[index].amount),
        title: '${percentage.toStringAsFixed(1)}%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    });
  }
}
