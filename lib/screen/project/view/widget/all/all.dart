import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:thiran_test/screen/project/view/widget/project_card.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> texList=['App Animation','Dashboard Ddesign','Ui/UX Design','test','BackEnd'];
    List<Color> colorList=[Color.fromARGB(255, 154, 159, 254),Color.fromARGB(255, 255,194,119),Color.fromARGB(255, 195,235,149),Color.fromARGB(255, 255,118,72),Color.fromARGB(255, 119, 241, 255)];
    List<double> percentValue=[0.45,0.55,0.99,0.25,0.99];
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                      child: ProjectCard(
                        tex: texList[index],
                        percent:percentValue[index] ,
                        cle: colorList[index],
                      ),
                    )))
      ]),
    );
  }
}
