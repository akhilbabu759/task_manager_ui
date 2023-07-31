import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:thiran_test/screen/project/view/widget/project_card.dart';
import 'package:fl_chart/fl_chart.dart';

import 'widget/view_project_detail.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({required this.cle, required this.percent, super.key});
  final Color cle;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final List<FlSpot> dataPoints = [
    FlSpot(0, 1),
    FlSpot(1,1.38 ),
    FlSpot(1.6, 1.13),
    FlSpot(2.5, 1.78),
    FlSpot(3.2, 1.68),
    FlSpot(4.5, 1.58),
    FlSpot(6, 2.7),
  ];
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.arrow_back_ios)),
                          Icon(CupertinoIcons.ellipsis_vertical)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          'DshBoard Design',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('today, Shared by -unibox Digital'),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: ViewProjectCard(
                          cle: cle,
                          percent: percent,
                        ),
                      ),
                      Text(
                        'Project Progress',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 22),
                        child: Container(
                            width: Get.width,
                            height: Get.height * 0.17,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                255, 154, 159, 254),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 154, 159, 254),
                                              width: 2.0,
                                            )),
                                        child: Center(
                                            child: Icon(
                                          Icons.done,
                                          size: 14,
                                          color: Colors.white,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Creat user flow',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 18.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                255, 154, 159, 254),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 154, 159, 254),
                                              width: 2.0,
                                            )),
                                        child: Center(
                                            child: Icon(
                                          Icons.done,
                                          size: 14,
                                          color: Colors.white,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Creat wireframe',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color:
                                                Color.fromARGB(0, 247, 247, 247),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 154, 159, 254),
                                              width: 2.0,
                                            )),
                                        child: Center(
                                            child: Icon(
                                          Icons.done,
                                          size: 14,
                                          color: const Color.fromARGB(
                                              255, 154, 159, 254),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Transform to visual desgin',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Project Overview',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Row(children: [Text('weekly',style: TextStyle(color: Color.fromARGB(255, 171, 171, 171)),),Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 171, 171, 171),)],)
                        ],
                      ),
                      SizedBox(height: 25,),
                      Container(
        height: Get.height * 0.25,
        width: Get.width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(10)),
        child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 3,
              titlesData: FlTitlesData(rightTitles: SideTitles(showTitles: false),topTitles: SideTitles(showTitles: false),
                bottomTitles: SideTitles(interval: 1,
                  showTitles: true,
                  getTitles: (value) {
                    int index = value.toInt();
                    if (index >= 0 && index < days.length) {
                      return days[index];
                    }
                    return '';
                    
                  },
                ),
                leftTitles: SideTitles(interval: 1,
                  showTitles: true,
                  getTitles: (value) {
                    log(value.toString());
                    return '${(value==0?0:(4*value)-(value%2==0?3:2)).toInt()}';
                  },
                ),
              ),
              gridData: FlGridData(show: true,horizontalInterval: 1,drawVerticalLine: false,),
              borderData: FlBorderData(
                show: false,
                border: Border.all(color: Color.fromARGB(255, 195,235,149), width: 1),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: dataPoints,
                  isCurved: true,
                  colors: [const Color.fromARGB(255, 195,235,149),],
                  dotData: FlDotData(show: false),
                  belowBarData: BarAreaData(show: true,colors:[Color.fromARGB(255, 195,235,149),Color.fromARGB(49, 195, 235, 149)],gradientFrom: Offset(2, 4),gradientTo: Offset(0,4), ),
                ),
              ],
            ),
          ),),
                    ]))),
      ),
    );
  }
}
