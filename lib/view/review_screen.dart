import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:nomadz/widgets/custon_logib_button.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: SizedBox(
       width: 170.w,
       height: 38.h,
       child: FloatingActionButton(
         backgroundColor:Color(0xff3f852b),
         isExtended: true,

         onPressed: () {
         Get.bottomSheet(
           Container(
          padding: EdgeInsets.only(left: 10.sp,right: 10.sp,top: 10.h),
                    height: 685.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color(0xffe9e9e9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Center(child: CustomText(text: 'What would you rate it?',fontSize: 14.sp,fontWeight: FontWeight.bold,)),
                      RatingBar.builder(
   initialRating: 0,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
Center(child: CustomText(text: 'Please share your opinion \n about the product',fontSize: 14.sp,fontWeight: FontWeight.bold,)),
              
              SizedBox(
                height: 14.h,
              
              ),
              Container(
                color: Colors.white,
                child: TextField(
                  maxLines: 6,
                  minLines: 4,
                  decoration: InputDecoration(
                    
                    hintText: 'Write your review here',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xffb3b3b3),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xffb3b3b3),
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
                      Container(
                        // padding: EdgeInsets.only(),
                        height: 116.h,
                        width: 116.w,
                        color: Colors.white,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt_rounded,size: 50.w,),
                            CustomText(text: 'Add your photos',fontSize: 10.sp,fontWeight: FontWeight.bold,)
                          ],
                        )
                      ),
                      SizedBox(height: 10.h,),
                      CustomLoginButton(title: 'SEND REVIEW',onPress: (){
                        Get.back();
                      
                      },),   
                      ],
                    ),
                    ),
                    
         );
        }, child: Row(
          children: [
            Icon(Icons.edit),
            CustomText(text: '  Write a review',color: Colors.white,fontWeight: FontWeight.bold,)
          ],
        ),),
     ),
      backgroundColor: Color(0Xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Color(0Xfff6f6f6),
        foregroundColor: Colors.black,
        
      ),
      body: Container(
        padding: EdgeInsets.only(top: 28.sp, left: 8.sp, right: 8.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        CustomText(text: 'Reviews', fontSize: 18.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 16.h,),
        Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: '4.3', fontSize: 26.sp,fontWeight: FontWeight.bold,),
              CustomText(text: '23 ratings', fontSize: 10.sp,fontWeight: FontWeight.bold,),
            ],
          ),
          SizedBox(width: 42.w,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(children: [
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            ],),
            Row(children: [
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
             
            ],),
            Row(children: [
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              
            ],),
            Row(children: [
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
             
            ],),
            Row(children: [
              Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
           
            ],),
           
          ],
              ),
          SizedBox(width: 5.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
          color: Colors.black,
          height: 9.h,
          width: 161.w,
              ),
              SizedBox(height: 6.h,
              ),
               Container(
          color: Colors.black,
          height: 9.h,
          width: 54.w,
              ),
              SizedBox(height: 6.h,
              ),
               Container(
          color: Colors.black,
          height: 9.h,
          width: 38.w,
              ),
              SizedBox(height: 6.h,
              ),
               Container(
          color: Colors.black,
          height: 9.h,
          width: 20.w,
              ),
              SizedBox(height: 6.h,
              ),
        
               Container(
          color: Colors.black,
          height: 9.h,
          width: 9.w,
              ),
            ],
          ),
            ],
          ),
          SizedBox(width: 16.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(text: '12', fontSize: 12.sp,fontWeight: FontWeight.bold,),
            CustomText(text: '5', fontSize: 12.sp,fontWeight: FontWeight.bold,),
            CustomText(text: '4', fontSize: 12.sp,fontWeight: FontWeight.bold,),
            CustomText(text: '2', fontSize: 12.sp,fontWeight: FontWeight.bold,),
            CustomText(text: '0', fontSize: 12.sp,fontWeight: FontWeight.bold,),
          ],
        ),
        ],),
        
        SizedBox(height: 46.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          CustomText(text: '8 reviews', fontSize: 18.sp,fontWeight: FontWeight.bold,),
          Row(children:[
            Checkbox(value: false, onChanged: (value){
              
            }),
        CustomText(text: 'With photo',fontWeight: FontWeight.bold,fontSize: 13.sp,)
          ]),
        ],),
        Stack(
          children: [
          Container(
            
              padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 20.h),
            
              height: 285.h,
            
              width: 373.w,
            
              decoration: BoxDecoration(
            
          color: Colors.white,
            
          borderRadius: BorderRadius.circular(10.0),
            
          boxShadow: [
            
            BoxShadow(
            
              color: Colors.black12,
            
              offset: Offset(0.0, 4.0),
            
              blurRadius: 10.0,
            
            ),
            
          ],
            
              ),
            
              child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.start,
            
          children: [
            
            CustomText(text: 'Helene Moore',fontWeight: FontWeight.bold,fontSize: 13.sp,),
            
            SizedBox(height: 6.h,),
            
            Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
            
              
            
                  Row(children: [
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                ],),
            
                
            
            CustomText(text: 'June 5, 2019',),
            
              ],
            
            ),
            
            SizedBox(height: 25.h,),
            
            CustomText(text: "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7'' and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller che",),
            
          SizedBox(height: 25.h,),
            
          Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
            
            CustomText(text: 'Helpful ',),
            
            Icon(Icons.thumb_up, color: Colors.grey,size: 14.sp,),
            
          ],)
            
          
            
          
            
          ]
            
          
            
          ,
            
              ),
            
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(backgroundColor: Colors.grey,)),
          ],
        ),
          SizedBox(height: 26.h,),
          Stack(
          children: [
          Container(
            
              padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 20.h),
            
              height: 285.h,
            
              width: 373.w,
            
              decoration: BoxDecoration(
            
          color: Colors.white,
            
          borderRadius: BorderRadius.circular(10.0),
            
          boxShadow: [
            
            BoxShadow(
            
              color: Colors.black12,
            
              offset: Offset(0.0, 4.0),
            
              blurRadius: 10.0,
            
            ),
            
          ],
            
              ),
            
              child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.start,
            
          children: [
            
            CustomText(text: 'Helene Moore',fontWeight: FontWeight.bold,fontSize: 13.sp,),
            
            SizedBox(height: 6.h,),
            
            Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
            
              
            
                  Row(children: [
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                  Icon(Icons.star, color: Colors.yellow,size: 14.sp,),
            
                ],),
            
                
            
            CustomText(text: 'June 5, 2019',),
            
              ],
            
            ),
            
            SizedBox(height: 25.h,),
            
            CustomText(text: "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7'' and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller che",),
            
          SizedBox(height: 25.h,),
            
          Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
            
            CustomText(text: 'Helpful ',),
            
            Icon(Icons.thumb_up, color: Colors.grey,size: 14.sp,),
            
          ],)
            
          
            
          
            
          ]
            
          
            
          ,
            
              ),
            
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(backgroundColor: Colors.grey,)),
          ],
        ),
           
          
           
            ]),
        ))
      
    );
  }
}