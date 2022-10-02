import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomadz/view/Product_adventure_view.dart';
import 'package:nomadz/view/product_For_sale_view.dart';
import 'package:nomadz/view/product_rental_view.dart';
import 'package:nomadz/widgets/container_icon.dart';
import 'package:nomadz/widgets/custom_text.dart';

import '../constants.dart';
import '../model/RentYourGearModel.dart';
import 'save_tabs.dart/nextfinal.dart';

class ExploringScreen extends StatefulWidget {
  @override
  _ExploringScreenState createState() => _ExploringScreenState();
}

class _ExploringScreenState extends State<ExploringScreen>
    with TickerProviderStateMixin {
  late PageController _pageController;
  int currentIndex = 0;
  late AnimationController _controller;
  RentYourGearModel loggedInUser = RentYourGearModel();
  String Brand = "",
      Model = "",
      Finish = "",
      Year = "",
      Description = "",
      PriceDaily = "",
      PriceWeekly = "",
      PriceMonthly = "";

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    )..forward();
    _pageController = PageController(initialPage: 0);
    FirebaseFirestore.instance
        .collection("Rent Your Gear")
        .doc('ouwhFXwnxYZ649cbTq2EtlnJS1V2')
        .get()
        .then((value) async {
      this.loggedInUser = RentYourGearModel.fromMap(value.data());
      Brand = value.data()!['Brand'];
      Model = value.data()!['Model'];
      Finish = value.data()!['Finish'];
      Year = value.data()!['Year'];
      Description = value.data()!['Description'];
      PriceDaily = value.data()!['PriceDaily'];
      PriceWeekly = value.data()!['PriceWeekly'];
      PriceMonthly = value.data()!['PriceMonthly'];
      var collection = FirebaseFirestore.instance.collection('Gear');
      var querySnapshot = await collection.get();
      for (var queryDocumentSnapshot in querySnapshot.docs) {
        Map<String, dynamic> data = queryDocumentSnapshot.data();
        var name = data['Brand'];
        var phone = data['phone'];
        print(data["Brand"]);
      }
      setState(() {});
    });
    // var collection = FirebaseFirestore.instance.collection('Gear');
    // collection.snapshots().listen((querySnapshot) {
    //   for (var doc in querySnapshot.docs) {
    //     Map<String, dynamic> data = doc.data();
    //     var fooValue = data['Brand']; // <-- Retrieving the value.
    //   print(fooValue);
    //   }
    // });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  String t1 = "";
  final db = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  final dbRef = FirebaseFirestore.instance.collection("Gear");
  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('Gear');

  Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    print(allData);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: bgColor,
                      height: 59.h,
                      width: 330.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Color(0xffEBEBEB),
                          filled: true,
                          hintText: 'Search for use gear nearby ,nearby',
                          hintStyle: TextStyle(
                              color: Colors.grey[500], fontSize: 17.sp),
                          prefixIcon: Icon(
                            Icons.search,
                            color: klightGreyColor,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: klightGreyColor, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: klightGreyColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                height: 330.h,
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      currentIndex = page;
                    });
                  },
                  controller: _pageController,
                  children: <Widget>[
                    makePage1(
                        onpress: () {
                          Get.to(() => ProductRentalViewPage());
                        },
                        image: 'assets/explore1.png',
                        title:
                            "  Find Gear You'll Love\nSupport Your Neighbors",
                        content: "Start Renting"),
                    makePage1(
                        onpress: () {
                          Get.to(() => ProductAdventureViewPage());
                        },
                        reverse: false,
                        image: 'assets/exploring2.png',
                        title: "Book Adventure Trips,\nLessons, Guides & More",
                        content: "Start Hosting"),
                    makePage1(
                        onpress: () {
                          Get.to(() => ProductForSaleViewPage());
                        },
                        image: 'assets/exploring3.png',
                        title: "Sell Your Gear & Fund\nYour Next Trip",
                        content: "Sell & Earn"),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 8.0.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildIndicator1(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h1.png"),
                            CustomText(
                              text: "Rentals",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h2.png"),
                            SizedBox(
                              height: 9,
                            ),
                            CustomText(
                              text: "User Gear",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h3.png"),
                            CustomText(
                              text: "Guides",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ContainerIcon(imageUrl: "assets/h4.png"),
                            CustomText(
                              text: "local",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "CATEGORIES",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  getData();
                                  // Get.to(() => CatogeryPage());
                                },
                                child: CustomText(
                                  text: "View all",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Icon(Icons.forward)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),

                    // Container(
                    //   height: 20.0,
                    //   width: 50.0,
                    //   child: StreamBuilder<QuerySnapshot>(
                    //     stream: FirebaseFirestore.instance.collection('Gear').snapshots(),
                    //     builder: (context, snapshot){
                    //       if(snapshot.hasData && snapshot.data!=null){
                    //         return ListView(
                    //           children: snapshot.data!.docs.map((doc) {
                    //             String m1 = (doc.data() as Map<String, dynamic>)['Brand'];
                    //             return Text(m1);
                    //           }).toList(),
                    //         );
                    //       }
                    //       else {
                    //         return Text('0');
                    //       }
                    //     },
                    //   ),
                    // ),

                    // StreamBuilder<QuerySnapshot>(
                    //   stream: db.collection('notes').snapshots(),
                    //   builder: (context, snapshot) {
                    //     if (!snapshot.hasData) {
                    //       return const Center(
                    //         child: CircularProgressIndicator(),
                    //       );
                    //     } else {
                    //       return ListView(
                    //         children: snapshot.data!.docs.map((doc) {
                    //          String w1= doc.data()!['Brand'];
                    //           return Card(
                    //             child: ListTile(
                    //               title: Text(w1.toString()),
                    //             ),
                    //           );
                    //         }).toList(),
                    //       );
                    //     }
                    //   },
                    // ),

                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const nectFinal()));
                                  },
                                  child: ClipOval(
                                      child: Image.network(
                                    'https://picsum.photos/200/300',
                                    width: 70.0,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  )),
                                ),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const nectFinal()));
                                  },
                                  child: ClipOval(
                                      child: Image.network(
                                    'https://picsum.photos/200/300',
                                    width: 70.0,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  )),
                                ),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                          ],
                        )),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: "FEATURED",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // Container(
                    //   height: 800,
                    //   color: Colors.amber,
                    // )
                    SizedBox(
                      height: 15,
                    ),

                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const nectFinal()));
                                    },
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 70.0,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                          ],
                        )),

                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "NEW ARRIVALS",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const nectFinal()));
                                    },
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 70.0,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "RECENTLY VIEWED",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const nectFinal()));
                                    },
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 70.0,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "FISHNG",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const nectFinal()));
                                    },
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 70.0,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "HUNTING",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const nectFinal()));
                                    },
                                    child: Image.network(
                                      'https://picsum.photos/200/300',
                                      width: 70.0,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  Brand,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                )
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names

  Widget makePage1({image, title, content, reverse = false, onpress}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.fitWidth),
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
          SizedBox(
            height: 140.h,
          ),
          Text(title,
              style:
                  GoogleFonts.montserrat(color: Colors.white, fontSize: 20.sp)),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: Container(
              height: 50,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: InkWell(
                    onTap: onpress,
                    child: Text(
                      content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
          reverse
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator1(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator1() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator1(true));
      } else {
        indicators.add(_indicator1(false));
      }
    }

    return indicators;
  }
}

class RowImageWithtext extends StatelessWidget {
  String imgUrl;

  RowImageWithtext({required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.amber,
          child: Container(
            height: 300.h,
            width: 500.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,

                // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.fill)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomText(
          text: "skd",
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}

class ContainerText extends StatelessWidget {
  String title;

  ContainerText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 110.h,
      decoration: BoxDecoration(
        color: kgreenColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: CustomText(
          text: title,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ColoumImageWith3text extends StatelessWidget {
  String imgUrl;
  String? firsttext = "";

  ColoumImageWith3text({required this.imgUrl, this.firsttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 60.r,
            backgroundColor: Colors.amber,
            child: Container(
              height: 400.h,
              width: 500.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Rozi 152 Sonwbo ",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: "Nonadz",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: " 70\$",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: "",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

class ColoumImageWithtext extends StatelessWidget {
  String imgUrl;
  String? firsttext = "";

  ColoumImageWithtext({required this.imgUrl, this.firsttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 60.r,
            backgroundColor: Colors.amber,
            child: Container(
              height: 400.h,
              width: 500.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  // borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Rozi 152 Sonwbo ",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: "Nonadz",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
