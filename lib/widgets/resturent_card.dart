// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'widgets/custom_text.dart';

// Widget resturentCard({
//   // String rate = 'pk200',
//   // String discountRate = '200',
//   String? resturentName,
//   // String cal = '200 cal',
//   String? resturentlocation,
//   required Function()? onTap,
//   String? resturentRating,
//   String? cardPicUrl,
// }) {
//   return InkWell(
//     onTap: onTap,
//     child: Container(
//       decoration: BoxDecoration(
// color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 3,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
      
//       ),
            
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 151.h,
//             width: 405,
//             decoration: BoxDecoration(
             
//               border: Border.all(width: 2, color: Colors.white),
//               borderRadius: BorderRadius.circular(10),
//               image: DecorationImage(
//                   image: NetworkImage(cardPicUrl!), fit: BoxFit.fitWidth),
//             ),
//           ),
//           SizedBox(
//             height: 8.w,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
              
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CustomText(
//                       text: resturentName!,
//                       fontSize: 20.sp,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     CustomText(text: resturentlocation!),
//                   ],
//                 ),
//                 Container(
//                   height: 50.h,
//                   width: 70.h,
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     border: Border.all(width: 2, color: Colors.white),
//                     borderRadius: BorderRadius.circular(60),
//                   ),
//                   child: Center(
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CustomText(text: resturentRating!),
//                           Icon(
//                             Icons.star,
//                             size: 20.r,
//                           ),
//                         ]),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 8.0,
//           ),
//           // Row(
//           //   children: [
//           //     CustomText(text: rate),
//           //     SizedBox(
//           //       width: 8.0,
//           //     ),
//           //     CustomText(text: discountRate),
//           //     Spacer(),
//           //     CustomText(text: cal),
//           //   ],
//           // ),
//           SizedBox(
//             height: 23.0,
//           ),
//         ],
//       ),
//     ),
//   );
// }
