import 'package:flutter/material.dart';
import 'package:thiran_test/screen/project/view/widget/project_card.dart';

class OnGoing extends StatelessWidget {
  const OnGoing({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> texList=['App Animation','Dashboard Ddesign','test',];
    List<Color> colorList=[Color.fromARGB(255, 154, 159, 254),Color.fromARGB(255, 255,194,119),Color.fromARGB(255, 255,118,72)];
    List<double> percentValue=[0.45,0.55,0.25];
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: 3,
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