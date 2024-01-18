import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stuntsync/features/statistic/widgets/recommendation_icon.dart';
import 'package:stuntsync/utils/helpers/helper.dart';

import '../../common/dummy/color.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../home/screens/widgets/add_height.dart';
import '../home/screens/widgets/kids_param.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    final dark = SSHelper.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: SSColors.primary,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          SSText.kidsName,
          style: TextStyle(
              color: SSColors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: SSSizes.sm),
            Center(
              child: CupertinoSlidingSegmentedControl(
                  groupValue: activeIndex,
                  children: const {
                    0: Text("Height"),
                    1: Text("Weight"),
                    2: Text("BMI"),
                  },
                  onValueChanged: (value) {
                    setState(() {
                      activeIndex = value!;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            color: dark ? SSColors.white : SSColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: dark
                                ? SSColors.white
                                : SSColors.primaryBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              iconEnabledColor:
                                  dark ? SSColors.grey : SSColors.white,
                              items: ["3 Months", "Yearly", "All Time"]
                                  .map((name) => DropdownMenuItem(
                                        value: name,
                                        child: Text(
                                          name,
                                          style: TextStyle(
                                              color: dark
                                                  ? SSColors.grey
                                                  : SSColors.black,
                                              fontSize: 14),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) {},
                              hint: Text(
                                "3 Months",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color:
                                        dark ? SSColors.black : SSColors.white,
                                    fontSize: 12),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 15),
                      height: media.width * 0.5,
                      width: double.maxFinite,
                      child: LineChart(
                        LineChartData(
                          // showingTooltipIndicators:
                          //     showingTooltipOnSpots.map((index) {
                          //   return ShowingTooltipIndicators([
                          //     LineBarSpot(
                          //       tooltipsOnBar,
                          //       lineBarsData.indexOf(tooltipsOnBar),
                          //       tooltipsOnBar.spots[index],
                          //     ),
                          //   ]);
                          // }).toList(),
                          lineTouchData: LineTouchData(
                            enabled: true,
                            handleBuiltInTouches: false,
                            touchCallback: (FlTouchEvent event,
                                LineTouchResponse? response) {
                              // if (response == null || response.lineBarSpots == null) {
                              //   return;
                              // }
                              // if (event is FlTapUpEvent) {
                              //   final spotIndex =
                              //       response.lineBarSpots!.first.spotIndex;
                              //   showingTooltipOnSpots.clear();
                              //   setState(() {
                              //     showingTooltipOnSpots.add(spotIndex);
                              //   });
                              // }
                            },
                            mouseCursorResolver: (FlTouchEvent event,
                                LineTouchResponse? response) {
                              if (response == null ||
                                  response.lineBarSpots == null) {
                                return SystemMouseCursors.basic;
                              }
                              return SystemMouseCursors.click;
                            },
                            getTouchedSpotIndicator: (LineChartBarData barData,
                                List<int> spotIndexes) {
                              return spotIndexes.map((index) {
                                return TouchedSpotIndicatorData(
                                  const FlLine(
                                    color: Colors.transparent,
                                  ),
                                  FlDotData(
                                    show: true,
                                    getDotPainter:
                                        (spot, percent, barData, index) =>
                                            FlDotCirclePainter(
                                      radius: 3,
                                      color: Colors.white,
                                      strokeWidth: 3,
                                      strokeColor: TColor.secondaryColor1,
                                    ),
                                  ),
                                );
                              }).toList();
                            },
                            touchTooltipData: LineTouchTooltipData(
                              tooltipBgColor: TColor.secondaryColor1,
                              tooltipRoundedRadius: 20,
                              getTooltipItems:
                                  (List<LineBarSpot> lineBarsSpot) {
                                return lineBarsSpot.map((lineBarSpot) {
                                  return LineTooltipItem(
                                    "${lineBarSpot.x.toInt()} mins ago",
                                    const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                          lineBarsData: lineBarsData1,
                          minY: -0.5,
                          maxY: 110,
                          titlesData: FlTitlesData(
                              show: true,
                              leftTitles: const AxisTitles(),
                              topTitles: const AxisTitles(),
                              bottomTitles: AxisTitles(
                                sideTitles: bottomTitles,
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: rightTitles,
                              )),
                          gridData: FlGridData(
                            show: true,
                            drawHorizontalLine: true,
                            horizontalInterval: 25,
                            drawVerticalLine: false,
                            getDrawingHorizontalLine: (value) {
                              return FlLine(
                                color: dark
                                    ? SSColors.white.withOpacity(0.60)
                                    : SSColors.grey,
                                strokeWidth: 2,
                              );
                            },
                          ),
                          borderData: FlBorderData(
                            show: true,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(height: SSSizes.defaultSpace),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: KidsParam(
                      dark: dark,
                      tittle: SSText.height,
                      value: "78.3",
                      onPressed: () => Get.to(() => const AddHeightScreen()),
                    ),
                  ),
                  const SizedBox(height: SSSizes.defaultSpace),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          // Get.to(() => const BottomNavigationParent());
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          alignment: Alignment.topLeft,
                          padding:
                              const EdgeInsets.fromLTRB(2.0, 10.0, 90.0, 30.0),
                          backgroundColor:
                              dark ? SSColors.white : SSColors.lightGrey,
                          side: BorderSide(
                            color: dark ? SSColors.white : SSColors.lightGrey,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: SSSizes.spaceBtwItems),
                                Text(
                                  SSText.recommendation,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(color: SSColors.darkerGrey),
                                ),
                              ],
                            ),
                            const SizedBox(height: SSSizes.spaceBtwItems),
                            Row(
                              children: [
                                const SizedBox(width: SSSizes.defaultSpace),
                                RecommendationIcon(
                                    dark: dark,
                                    image: 'assets/icons/food_icon.png',
                                    text: "Food"),
                                const SizedBox(width: SSSizes.defaultSpace),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Stack(children: [
                  //   KidsParam(dark: dark, tittle: SSText.recommendation),
                  // ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
      ];

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: SSColors.buttonPrimary,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
          getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
            radius: 3,
            color: Colors.white,
            strokeWidth: 1,
            strokeColor: SSColors.primary,
          ),
        ),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 70),
          FlSpot(2, 71),
          FlSpot(3, 74),
          FlSpot(4, 75),
          FlSpot(5, 76),
          FlSpot(6, 78.6),
        ],
      );

  SideTitles get rightTitles => SideTitles(
        getTitlesWidget: rightTitleWidgets,
        showTitles: true,
        interval: 20,
        reservedSize: 40,
      );

  Widget rightTitleWidgets(double value, TitleMeta meta) {
    final dark = SSHelper.isDarkMode(context);
    String text;
    switch (value.toDouble()) {
      case 0:
        text = '0';
        break;
      case 20:
        text = '20';
        break;
      case 40:
        text = '40';
        break;
      case 60:
        text = '60';
        break;
      case 80:
        text = '80';
        break;
      case 100:
        text = '100';
        break;
      default:
        return Container();
    }

    return Text(text,
        style: TextStyle(
          color: dark ? SSColors.white : SSColors.primaryBackground,
          fontSize: 12,
        ),
        textAlign: TextAlign.center);
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final dark = SSHelper.isDarkMode(context);
    var style = TextStyle(
      color: dark ? SSColors.white : SSColors.primaryBackground,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('10/11', style: style);
        break;
      case 2:
        text = Text('24/11', style: style);
        break;
      case 3:
        text = Text('08/12', style: style);
        break;
      case 4:
        text = Text('22/12', style: style);
        break;
      case 5:
        text = Text('12/01', style: style);
        break;
      case 6:
        text = Text('26/01', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }
}
