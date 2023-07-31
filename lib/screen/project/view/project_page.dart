 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:thiran_test/screen/home/controller/home_controller.dart';
import 'package:thiran_test/screen/project/view/widget/all/all.dart';
import 'package:thiran_test/screen/project/view/widget/completed/completed.dart';
import 'package:thiran_test/screen/project/view/widget/ongoing/ongoing.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>  with SingleTickerProviderStateMixin {
   late TabController _tabController;
   @override
  void initState() {


    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final control = Get.put(HomeController());
    return  Scaffold(body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(
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
                  ),Padding(
                    padding: const EdgeInsets.only(top:18.0,bottom: 18),
                    child: Text('Project',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Expanded(
                    child: DefaultTabController(
                            length: 3, // length of tabs
                            initialIndex: 0,
                            child: Column(children: [
                              const SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                height: 45,
                                child: TabBar(
                                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 159, 163, 247),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 158, 158, 158),
                          blurRadius: 15,
                          offset: Offset(5, 5),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5),
                        ),
                      ]),
                                  controller: _tabController,
                                  // indicatorColor: ,
                                  labelColor: Color.fromARGB(255, 238, 238, 238),
                                  unselectedLabelColor: Colors.black,
                                  tabs: const [
                    Text(
                      'All',
                      style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Ongoing',
                      style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold),
                    ),Text(
                      'Completed',
                      style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                                child: TabBarView(
                    controller: _tabController,
                    children: const [All(),OnGoing(), Completd()]),
                              ))
                            ]),
                          ),
                  )
                  ]),
      ),
    ),

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
    );
  }
}