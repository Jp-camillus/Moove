import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SpendingLineChart extends StatelessWidget {
  final List<MonthlyExpense> data;

  SpendingLineChart({required this.data});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    if (data.isEmpty) {
      return const Center(child: Text('No data available'));
    }

    return SizedBox(
      height: h * 0.2,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= data.length)
                    return const SizedBox.shrink();
                  return Text(data[index].month.substring(0, 3));
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false), // Hide Y-axis
            ),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: (data.length - 1).toDouble(),
          minY: 0,
          maxY: _getMaxY(data),
          lineTouchData: LineTouchData(
            touchSpotThreshold: 23,
            enabled: true,
            handleBuiltInTouches:
                true, // 👈 IMPORTANT: enables default tap behavior
            touchTooltipData: LineTouchTooltipData(
              rotateAngle: BorderSide.strokeAlignCenter,
              getTooltipColor: (touchedSpot) => Colors.black,
              fitInsideHorizontally: true,
              fitInsideVertically: true,
              getTooltipItems: (touchedSpots) {
                return touchedSpots
                    .map((spot) {
                      final index = spot.x.toInt();
                      if (index < 0 || index >= data.length) return null;

                      final month = data[index].month;
                      final amount = data[index].amount.toStringAsFixed(2);
                      return LineTooltipItem(
                        '$month\n₦$amount',
                        const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    })
                    .whereType<LineTooltipItem>()
                    .toList();
              },
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: data.asMap().entries.map((e) {
                return FlSpot(e.key.toDouble(), e.value.amount);
              }).toList(),
              isCurved: true,
              barWidth: 3,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: true, color: Colors.white),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to calculate max Y with headroom
  double _getMaxY(List<MonthlyExpense> data) {
    final amounts = data.map((e) => e.amount).where((a) => a.isFinite).toList();
    if (amounts.isEmpty) return 100;
    final max = amounts.reduce((a, b) => a > b ? a : b);
    return (max * 1.2).ceilToDouble(); // Add 20% headroom
  }
}

class MonthlyExpense {
  final String month;
  final double amount;

  MonthlyExpense(this.month, this.amount);
}
