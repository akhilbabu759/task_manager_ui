import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({required this.icons,required this.cle,required this.progresVlue,
    super.key,
  });
final Icon icons;
final Color cle;
final double progresVlue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.1,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 243, 243),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icons.icon,
              color: icons.color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('App Animation'),
                  Container(
                    height: 10,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 72, 18, 18)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: LinearProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(cle) ,
                        minHeight: 10,
                        backgroundColor:
                            Color.fromARGB(255, 252, 252, 252),
                        value: progresVlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(alignment: Alignment.center,
                  children: [Container(width: Get.width*0.22,),
                    Positioned(child: CircleAvatar(backgroundColor: const Color.fromARGB(255, 100, 98, 90),backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),),left: 2,),
                    Positioned(child: CircleAvatar(backgroundColor: Colors.amber,backgroundImage: NetworkImage('https://image.shutterstock.com/mosaic_250/2780032/1667439913/stock-photo-headshot-portrait-of-smiling-millennial-male-employee-talk-on-video-call-or-web-conference-in-1667439913.jpg')),left: 23,),
                    Positioned(child: CircleAvatar(backgroundColor: Colors.blue,backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/00/90/24/360_F_200902415_G4eZ9Ok3Ypd4SZZKjc8nqJyFVp1eOD6V.jpg')),left: 45,)
                  ],
                ),
                Icon(Icons.keyboard_arrow_right_outlined,size: 40,color:Color.fromARGB(255, 215, 215, 215) ,)
              ],
            )
          ],
        ),
      )),
    );
  }
}
