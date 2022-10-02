import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerIcon extends StatelessWidget {
  String imageUrl;

  ContainerIcon({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 60.h,
          width: 60.h,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: ExactAssetImage(imageUrl), fit: BoxFit.fitHeight),
          ),
        ));
  }
}

// Widget({
//   Function() ontab,
// }) {
//   return InkWell(
//     onTap: () {},
//     child: Container(
//       height: 100.h,
//       width: 100.h,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.white,
//       ),
//       child: Align(
//         alignment: Alignment.center,
//         child: Container(child: Image.asset("assets/lo.png")),
//       ),
//     ),
//   );
// }
