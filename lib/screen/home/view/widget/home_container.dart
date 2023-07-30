
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiran_test/const/colors/colors.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer(
      {super.key,
      required this.tex,
      required this.icons,
      required this.cle,
      required this.stackChild,required this.left,required this.top});
  final String tex;
  final Icon icons;
  final Color cle;
  final Widget stackChild;
  final double top;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.size.height * 0.13,
          width: Get.size.width * 0.43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: cle),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              icons.icon,
              color: Styles().texWhite,
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              tex,
              style: TextStyle(
                  color: Styles().texWhite,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        Positioned(top: top, left: left, child: stackChild)
      ],
    );
  }
}
