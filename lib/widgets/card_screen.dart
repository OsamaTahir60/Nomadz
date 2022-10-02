
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import 'custom_text.dart';

// class CardScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: GetBuilder<>(
//             builder: (cartController) {
//               return Column(
//                 children: [
//                   Container(
//                     height: 200.h,
//                     width: Get.width,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('assets/resturaunt.png'),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(10.r),
//                         bottomRight: Radius.circular(10.r),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                       padding: EdgeInsets.all(20.sp),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           CustomText(
//                             text: 'Your order',
//                             fontSize: 23.sp,
//                             fontWeight: FontWeight.w700,
//                           ),
//                           SizedBox(
//                             width: 15.h,
//                           ),
//                           Icon(Icons.shopping_cart_sharp),
//                           SizedBox(
//                             width: 10.h,
//                           ),
//                           CustomText(
//                             text: '2',
//                             fontSize: 17.sp,
//                             fontWeight: FontWeight.w700,
//                           ),
//                           Spacer(),
//                           Container(
//                               child: Icon(
//                             Icons.cancel_sharp,
//                             size: 20.r,
//                           )),
//                         ],
//                       )),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20.0, right: 20),
//                         child: Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(10.0),
//                                 )),
//                             padding: EdgeInsets.all(10.sp),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Icon(
//                                               Icons.home_outlined,
//                                               size: 45.r,
//                                             ),
//                                             SizedBox(
//                                               width: 20.h,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 CustomText(
//                                                   text: "name",
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 18.sp,
//                                                 ),
//                                                 CustomText(
//                                                   text: "address",
//                                                   fontSize: 14.sp,
//                                                   fontWeight: FontWeight.normal,
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 100.h,
//                                             ),
//                                             CustomText(
//                                               text: "Edit Address",
//                                               fontSize: 14.sp,
//                                               fontWeight: FontWeight.normal,
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     // ClipRRect(
//                                     //     borderRadius: BorderRadius.circular(10.r),
//                                     //     child: Image.network(
//                                     //       '${product.productImage}',
//                                     //       height: 100.h,
//                                     //       width: 100.w,
//                                     //
//                                     //
//                                     //    )),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 50.h,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Icon(
//                                               Icons.timer,
//                                               size: 40.r,
//                                             ),
//                                             SizedBox(
//                                               width: 20.h,
//                                             ),
//                                             CustomText(
//                                               text: "30 Mints",
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 18.sp,
//                                             ),
//                                             SizedBox(
//                                               width: 85.h,
//                                             ),
//                                             CustomText(
//                                               text: "Schedule time",
//                                               fontSize: 14.sp,
//                                               fontWeight: FontWeight.normal,
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     // ClipRRect(
//                                     //     borderRadius: BorderRadius.circular(10.r),
//                                     //     child: Image.network(
//                                     //       '${product.productImage}',
//                                     //       height: 100.h,
//                                     //       width: 100.w,
//                                     //
//                                     //
//                                     //    )),
//                                   ],
//                                 )
//                               ],
//                             ),
//                             width: Get.width),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20.0, right: 20),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.3),
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10.0),
//                               )),
//                           height: 100.h,
//                           child: Column(
                          
//                             children: [
//                               for(CartModel cartItem in cartController.cartItems)
//                               Container(
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                         left: 20.0,
//                                       ),
//                                       child: Container(
//                                           height: 80.h,
//                                           width: 50.h,
//                                           decoration: new BoxDecoration(
//                                               image: new DecorationImage(
//                                             image: new AssetImage(
//                                                 "assets/shapaa2Artboard.png"),
//                                             fit: BoxFit.cover,
//                                           ))),
//                                     ),
//                                     SizedBox(
//                                       width: 10.h,
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(14.0),
//                                       child: Column(
//                                         children: [
//                                           CustomText(
//                                             text: "${cartItem.cartItem!.productName}",
//                                             fontSize: 18.sp,
//                                             fontWeight: FontWeight.bold,
//                                           ),
                                      
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 5.h,
//                                     ),
//                                     Column(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.center,
//                                           child: Container(
//                                             margin: EdgeInsets.only(
//                                                 top: 10.h,),
//                                             padding: EdgeInsets.only(
//                                                 left: 10.w,
//                                                 right: 10.w,
//                                                 top: 5.h,
//                                                 bottom: 5.h),
//                                             decoration: BoxDecoration(
//                                               border: Border.all(width: 1.0),
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(
//                                                       25.0) //                 <--- border radius here
//                                                   ),
//                                             ),
//                                             child: Row(
//                                               children: [
//                                                 InkWell(
//                                                     onTap: () {
//                                                       cartController.decreaseQuantity(cartItem);
//                                                     },
//                                                     child: Icon(
//                                                       Icons.remove,
//                                                       size: 20.r,
//                                                     )),
//                                                 CustomText(
//                                                   text: "${cartItem.quantity}",
//                                                   fontSize: 20.sp,
//                                                   fontWeight: FontWeight.normal,
//                                                 ),
//                                                 InkWell(
//                                                     onTap: () {
//                                                       cartController.increaseQuantity(cartItem);
//                                                     },
//                                                     child: Icon(
//                                                       Icons.add,
//                                                       size: 20.r,
//                                                     )),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                          Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Align(
//                                         alignment: Alignment.center,
//                                         child: CustomText(
//                                           text: "Rs ${cartItem.cartItem!.productPrice! * cartItem.quantity!}",
//                                           fontSize: 14.sp,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                       ),
//                                     ),
//                                       ],
//                                     ),
                                  
                                   
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(18.0),
//                         child: Container(
//                           padding: const EdgeInsets.all(18.0),
//                           decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 5,
//                                 blurRadius: 7,
//                                 offset: Offset(3, 3), // changes position of shadow
//                               ),
//                             ],
//                             borderRadius: BorderRadius.all(Radius.circular(
//                                     25.0) //                 <--- border radius here
//                                 ),
//                           ),
//                           child: Column(
//                             children: [
//                               Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     CustomText(
//                                       text: "subtotal",
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                     CustomText(
//                                       text: "Rs ${cartController.subTotal}",
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ]),
//                               Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     CustomText(
//                                       text: "Delivery",
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                     CustomText(
//                                       text: "Rs ${cartController.deliveryFee}",
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ]),
//                               Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     CustomText(
//                                       text: "Total",
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                     CustomText(
//                                       text: "Rs ${cartController.total}",
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ]),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(48.0),
//                         child: CustomBtn(
//                           text: 'CheckOut',
//                           onPressed: () {
//                             orderController.placeOrder(cartController.cartItems);
//                           },
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               );
//             }
//           ),
//         ),
//       ),
//     );
//   }
// }
