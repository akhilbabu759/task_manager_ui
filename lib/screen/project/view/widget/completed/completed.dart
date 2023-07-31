import 'package:flutter/material.dart';
import 'package:thiran_test/screen/project/view/widget/project_card.dart';

class Completd extends StatelessWidget {
  const Completd({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> texList=['Ui/UX Design','BackEnd'];
    List<Color> colorList=[Color.fromARGB(255, 195,235,149),Color.fromARGB(255, 119, 241, 255)];
     List<double> percentValue=[0.99,0.99];
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: 2,
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