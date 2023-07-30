import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_test/const/colors/colors.dart';
import 'package:thiran_test/screen/home/controller/home_controller.dart';

import 'widget/home_container.dart';
import 'widget/home_list_tile.dart';
import 'package:iconly/iconly.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Icon> iconlist = [
      Icon(Icons.check_circle_outline,
          color: Color.fromARGB(255, 151, 151, 151)),
      Icon(Icons.check_circle, color: Color.fromARGB(255, 195, 235, 149)),
      Icon(Icons.check_circle_outline,
          color: Color.fromARGB(255, 151, 151, 151)),
      Icon(Icons.check_circle_outline,
          color: Color.fromARGB(255, 151, 151, 151)),
      Icon(Icons.check_circle_outline,
          color: Color.fromARGB(255, 151, 151, 151))
    ];
    List<Color> cleLsit = [
      Color.fromARGB(255, 146, 152, 255),
      Color.fromARGB(255, 195, 235, 149),
      Color.fromARGB(255, 255, 194, 119),
      Color.fromARGB(255, 255, 118, 72),
      Color.fromARGB(255, 146, 152, 255)
    ];
    final control = Get.put(HomeController());
    List<double> pgValue = [0.8, 1, 0.4, 0.6, 0.2];
    //  control. startProgressAnimation();
    return Scaffold(
        body: SafeArea(
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
                  const HomeContainer(
                      top: -16,
                      left: 18,
                      tex: 'In Progress',
                      icons: Icon(Icons.access_time_rounded),
                      cle: Color.fromARGB(214, 228, 160, 58),
                      stackChild: CircleAvatar(
                        radius: 17,
                        backgroundColor: Color.fromARGB(119, 188, 58, 2),
                      )),
                  HomeContainer(
                    left: -1.7,
                    top: 85,
                    stackChild: Container(
                      width: Get.width * 0.08,
                      height: Get.height * 0.03,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(
                            151,
                            66,
                            75,
                            245,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomLeft: Radius.circular(100))),
                    ),
                    tex: 'Ongoing',
                    icons: const Icon(Icons.swap_horiz),
                    cle: const Color.fromARGB(151, 66, 75, 245),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeContainer(
                        left: -15,
                        top: 50,
                        stackChild: CircleAvatar(
                          radius: 14,
                          backgroundColor: Color.fromARGB(192, 171, 200, 25),
                        ),
                        tex: 'Completed',
                        icons: Icon(IconlyLight.paper),
                        cle: Color.fromARGB(178, 171, 200, 25)),
                    HomeContainer(
                      top: -16,
                      left: 18,
                      tex: 'Cancel',
                      icons: Icon(IconlyLight.paper_fail),
                      stackChild: CircleAvatar(
                        radius: 17,
                        backgroundColor: Color.fromARGB(171, 225, 170, 19),
                      ),
                      cle: Color.fromARGB(170, 250, 60, 2),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Task',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'All Task',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 151, 151, 151)),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color.fromARGB(255, 151, 151, 151),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: HomeListTile(
                              cle: cleLsit[index],
                              icons: iconlist[index],
                              progresVlue: pgValue[index],
                            ),
                          ))),
            ],
          ),
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromARGB(255, 154, 159, 254),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 33,
            )),
        bottomNavigationBar: GetBuilder<HomeController>(builder: (controller) {
          return BottomAppBar(
            child: SizedBox(
                height: Get.height * 0.08,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton( onPressed: () {
                        control.navbarChang(0);
                      },icon: Icon(IconlyBold.home,color: control.navIndex==0?Color.fromARGB(255, 154, 159, 254):Color.fromARGB(255, 147, 147, 147))),
                      IconButton( onPressed: () {
                        control.navbarChang(1);
                      },icon: Icon(IconlyBold.paper,color: control.navIndex==1?Color.fromARGB(255, 154, 159, 254):Color.fromARGB(255, 147, 147, 147))),Text(''),
                      IconButton( onPressed: () {
                        control.navbarChang(2);
                      },icon: Icon(IconlyBold.message,color: control.navIndex==2?Color.fromARGB(255, 154, 159, 254):Color.fromARGB(255, 147, 147, 147))),
                      IconButton( onPressed: () {
                        control.navbarChang(3);
                      },icon: Icon(IconlyBold.setting,color: control.navIndex==3?Color.fromARGB(255, 154, 159, 254):Color.fromARGB(255, 147, 147, 147),))
                    ])),
            elevation: 0,
            notchMargin: 8.0,
            shape: CircularNotchedRectangle(),
          );
        })
        // unselectedLabelStyle: const TextStyle(color: Colors.black),
        // unselectedItemColor: Color.fromARGB(255, 152, 152, 152),
        // type: BottomNavigationBarType.fixed,
        // onTap: (value) async {
        //   control.navbarChang(value);
        // },
        // currentIndex: control.navIndex,
        // selectedItemColor: const Color.fromARGB(255, 243, 180, 33),
        // items: const [
        //   BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(
        //         Icons.home,
        //       )),
        //   BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(
        //         Icons.business_center_outlined,
        //       )),
        //   BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(
        //         Icons.settings,
        //         color: Colors.white,
        //       )),
        //   BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(
        //         Icons.message_outlined,
        //       )),
        //   BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(
        //         Icons.person_outline_outlined,
        //       ))
        // ]);
        //     },
        //   ),
        );
  }
}
