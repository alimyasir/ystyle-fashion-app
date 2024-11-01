// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/text_styles.dart';
// import 'package:intl/intl.dart';
//
// class ChartPage extends StatelessWidget {
//   const ChartPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//        SizedBox(
//          height: 300,
//          width: Get.width,
//          child: SfCartesianChart(
//            plotAreaBorderColor: Colors.transparent,
//            primaryXAxis: DateTimeAxis(
//              intervalType: DateTimeIntervalType.days,
//              dateFormat: DateFormat.MMMd(),
//              axisLine: const AxisLine(color: Colors.transparent),
//              labelStyle: kTextStyle(
//                color: AppColor.lightGreyColor,
//                fontWeight: FontWeight.w500,
//              ),
//              minorGridLines: MinorGridLines(width: 0),
//              majorGridLines: MajorGridLines(width: 0),
//              majorTickLines: MajorTickLines(width: 0),
//              minorTickLines: MinorTickLines(width: 0),
//            ),
//            primaryYAxis: NumericAxis(
//              labelStyle: kTextStyle(
//                color: AppColor.blackColor,
//                fontWeight: FontWeight.w500,
//                ),
//              minimum: -2,
//              maximum: 2,
//              interval: 1,
//              axisLine: AxisLine(color: Colors.transparent),
//              majorTickLines: MajorTickLines(width: 0),
//              minorTickLines: MinorTickLines(width: 0),
//              labelAlignment: LabelAlignment.center,
//              edgeLabelPlacement: EdgeLabelPlacement.shift,
//            ),
//            series: <CartesianSeries>[
//              AreaSeries<ChartData, DateTime>(
//                dataSource: getChartData(),
//                xValueMapper: (ChartData data, _) => data.date,
//                yValueMapper: (ChartData data, _) => data.value,
//                color: Colors.lightBlue.withOpacity(0.4),
//                borderColor: Colors.lightBlue,
//                borderWidth: 2,
//              )
//            ],
//          ),
//        );
//   }
//
//   List<ChartData> getChartData() {
//     return [
//       ChartData(DateTime(2024, 2, 27), 1),
//       ChartData(DateTime(2024, 2, 28), -1),
//       ChartData(DateTime(2024, 3, 1), 0),
//       ChartData(DateTime(2024, 3, 11), 1),
//       ChartData(DateTime(2024, 3, 12), 1),
//       ChartData(DateTime(2024, 3, 13), 0),
//       ChartData(DateTime(2024, 3, 23), 1),
//       ChartData(DateTime(2024, 3, 24), -1),
//       ChartData(DateTime(2024, 3, 25), 0),
//     ];
//   }
// }
//
// class ChartData {
//   ChartData(this.date, this.value);
//   final DateTime date;
//   final double value;
// }
