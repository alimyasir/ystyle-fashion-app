// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/text_styles.dart';
//
//
// class DailyChart extends StatefulWidget {
//   @override
//   _DailyChartState createState() => _DailyChartState();
// }
//
// class _DailyChartState extends State<DailyChart> {
//   int currentDayIndex = DateTime.now().weekday - 1;
//   List weekDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
//   void goToNextDay() {
//     setState(() {
//       currentDayIndex = (currentDayIndex + 1) % 7;
//     });
//   }
//
//   void goToPreviousDay() {
//     setState(() {
//       currentDayIndex = (currentDayIndex - 1 + 7) % 7;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     final currentDay = days[currentDayIndex];
//     final currentData = data[currentDay];
//
//     return Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 ///previous day name
//                 IconButton(onPressed:  goToPreviousDay, icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 30,)),
//                 KText(
//                   text: weekDays[currentDayIndex],
//                   fontWeight: FontWeight.w400, fontSize: 18),
//
//                 ///next day button
//                 IconButton(onPressed: goToNextDay, icon: Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 30,)),
//               ],
//             ),
//             SizedBox(
//               height: 260,
//               width: MediaQuery.sizeOf(context).width,
//               child: SfCartesianChart(
//                 plotAreaBorderColor: Colors.transparent,
//                 plotAreaBorderWidth: 0,
//                 primaryXAxis: CategoryAxis(
//                   axisLine: AxisLine(width: 0),
//                   borderColor: Colors.transparent,
//                   borderWidth: 5,
//                   majorGridLines: MajorGridLines(width: 0),
//                   majorTickLines: MajorTickLines(width: 0),  // Remove major tick lines
//                 ),
//                 primaryYAxis: NumericAxis(
//                   isVisible: false,
//                   majorGridLines: MajorGridLines(width: 0),
//                   minorGridLines: MinorGridLines(width: 0), // Ensure minor grid lines are hidden
//                   majorTickLines: MajorTickLines(width: 0),
//                 ),
//                 series: <CartesianSeries>[
//                   ColumnSeries<ChartData, String>(
//                     dataSource: currentData,
//                     xValueMapper: (ChartData data, _) => data.time,
//                     yValueMapper: (ChartData data, _) => data.value,
//                     color: AppColor.shinyGreen,
//                     width: 0.95,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//   }
// }
//
//
// class ChartData {
//   final String time;
//   final double value;
//
//   ChartData(this.time, this.value);
// }
//
// final Map<String, List<ChartData>> data = {
//   'Monday': [
//     ChartData('12a', 10),
//     ChartData('3a', 10),
//     ChartData('6a', 10),
//     ChartData('9a', 15),
//     ChartData('12p', 20),
//     ChartData('3p', 25),
//     ChartData('6p', 30),
//     ChartData('9p', 25),
//   ],
//   'Tuesday': [
//     ChartData('12a', 12),
//     ChartData('3a', 15),
//     ChartData('6a', 20),
//     ChartData('9a', 25),
//     ChartData('12p', 30),
//     ChartData('3p', 35),
//     ChartData('6p', 40),
//     ChartData('9p', 35),
//   ],
//   'Wednesday': [
//     ChartData('12a', 12),
//     ChartData('3a', 12),
//     ChartData('6a', 12),
//     ChartData('9a', 15),
//     ChartData('12p', 18),
//     ChartData('3p', 22),
//     ChartData('6p', 25),
//     ChartData('9p', 25),
//   ],
//   'Thursday': [
//     ChartData('12a', 14),
//     ChartData('3a', 16),
//     ChartData('6a', 18),
//     ChartData('9a', 22),
//     ChartData('12p', 26),
//     ChartData('3p', 30),
//     ChartData('6p', 34),
//     ChartData('9p', 30),
//   ],
//   'Friday': [
//     ChartData('12a', 15),
//     ChartData('3a', 17),
//     ChartData('6a', 19),
//     ChartData('9a', 23),
//     ChartData('12p', 27),
//     ChartData('3p', 31),
//     ChartData('6p', 35),
//     ChartData('9p', 31),
//   ],
//   'Saturday': [
//     ChartData('12a', 16),
//     ChartData('3a', 18),
//     ChartData('6a', 20),
//     ChartData('9a', 24),
//     ChartData('12p', 28),
//     ChartData('3p', 32),
//     ChartData('6p', 36),
//     ChartData('9p', 32),
//   ],
//   'Sunday': [
//     ChartData('12a', 17),
//     ChartData('3a', 19),
//     ChartData('6a', 21),
//     ChartData('9a', 25),
//     ChartData('12p', 29),
//     ChartData('3p', 33),
//     ChartData('6p', 37),
//     ChartData('9p', 33),
//   ],
// };
//
// final List<String> days = data.keys.toList();
