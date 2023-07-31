
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ViewProjectCard extends StatelessWidget {
  const ViewProjectCard({required this.percent,required this.cle,
    super.key,
  });

final double percent;
final Color cle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.25,
      width: Get.width,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularPercentIndicator(progressColor: cle,
    radius: Get.width*0.53 / 4, 
    lineWidth: 9.0, 
    percent:percent, animation: true,animationDuration: 5000,
    center:  Text("${(percent * 100).toInt()}%", style: TextStyle(color: Color(0xFF535355))), 
    // linearGradient: LinearGradient(begin: Alignment.topRight,end:Alignment.bottomLeft, colors: <Color>    [Color.fromARGB(255, 154,159,254),Color.fromARGB(255, 154,159,254)]),
    // rotateLinearGradient: true,
      circularStrokeCap: CircularStrokeCap.round
     )],),SizedBox(width:30,),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Text(tex,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              // Padding(
              //   padding: const EdgeInsets.only(top:8.0,bottom: 15),
              //   child: Text('Today, Shared by - Ubox Digital',style: TextStyle(fontSize: 13,color: const Color.fromARGB(255, 187, 187, 187)),),
              // ),
              Text('Team',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              Row(
                children: [
                  Stack(alignment: Alignment.centerLeft, children: [Container(width: Get.width*0.4,height: Get.height*0.08,color: const Color.fromARGB(255, 255, 255, 255),),Positioned(child: CircleAvatar(backgroundColor: const Color.fromARGB(255, 100, 98, 90),backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),),left: 2,),
                        Positioned(child: CircleAvatar(backgroundColor: Colors.amber,backgroundImage: NetworkImage('https://image.shutterstock.com/mosaic_250/2780032/1667439913/stock-photo-headshot-portrait-of-smiling-millennial-male-employee-talk-on-video-call-or-web-conference-in-1667439913.jpg')),left: 23,),
                        Positioned(child: CircleAvatar(backgroundColor: Colors.blue,backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/00/90/24/360_F_200902415_G4eZ9Ok3Ypd4SZZKjc8nqJyFVp1eOD6V.jpg')),left: 45,),
                        Positioned(child: CircleAvatar(backgroundColor: Colors.blue,backgroundImage: NetworkImage('https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg')),left: 65,),
                        Positioned(child: CircleAvatar(backgroundColor: Colors.amber,child: Icon(Icons.add,color: Colors.white,),),left: 85,)
                      ],),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0,bottom: 12),
                child: Text('Deadline',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              ),
              Row(children: [Icon(IconlyLight.calendar,color: Color.fromARGB(255, 177, 177, 177),),Text(' June 15-june 22,2021',style: TextStyle(fontSize: 13,color: const Color.fromARGB(255, 187, 187, 187)))],)
            ]),
          ],
        ),
      ),
    );
  }
}
