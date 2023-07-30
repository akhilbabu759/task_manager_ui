import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_test/const/colors/colors.dart';

import 'widget/home_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage(
                        'assets/images/png-clipart-user-profile-computer-icons-girl-customer-avatar-angle-heroes-thumbnail.png'),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color.fromARGB(255, 251, 251, 251),
                    backgroundImage: AssetImage(
                      'assets/images/Instagram-Search-Icon-982vbc.png',
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0, bottom: 15),
                child: Text(
                  'Hello',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 136, 136, 136)),
                ),
              ),
              const Text('Alex Marconi',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              SizedBox(
                height: Get.size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeContainer(top: -16, left: 18,
                      tex: 'In Progress',
                      icons: Icon(Icons.access_time_rounded),
                      cle: Color.fromARGB(214, 228, 160, 58),
                      stackChild: CircleAvatar(
                        radius: 17,
                        backgroundColor: Color.fromARGB(119, 188, 58, 2),
                      )),
                  HomeContainer(left: -1.7,top:85 ,stackChild:  Container(width: Get.width*0.08,height: Get.height*0.03, decoration: BoxDecoration(color:Color.fromARGB(151, 66, 75, 245,),borderRadius: BorderRadius.only(topRight: Radius.circular(60),bottomLeft:  Radius.circular(100)) ),
              
            ),
                    tex: 'Ongoing',
                    icons: Icon(Icons.swap_horiz),
                    cle: Color.fromARGB(151, 66, 75, 245),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeContainer(left: -15,top: 50,stackChild:  CircleAvatar(
              radius: 14,
              backgroundColor: Color.fromARGB(192, 171, 200, 25),
            ),
                        tex: 'Completed',
                        icons: Icon(Icons.insert_drive_file_outlined),
                        cle: Color.fromARGB(178, 171, 200, 25)),
                    HomeContainer(top: -16, left: 18,
                      tex: 'Cancel',
                      icons: Icon(Icons.cancel),
                      stackChild: CircleAvatar(
                        radius: 17,
                        backgroundColor: Color.fromARGB(171, 225, 170, 19),
                      ),
                      cle: Color.fromARGB(170, 250, 60, 2),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
