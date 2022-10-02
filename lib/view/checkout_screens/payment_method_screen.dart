import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:nomadz/widgets/custom_text.dart';
import 'package:http/http.dart' as http;

class PaymentMethodScreen extends StatefulWidget {
  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}
class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  Map<String, dynamic>? paymentIntentData;

  Future<void> makePayment() async {
    try {
      paymentIntentData = await createPaymentIntent('20', 'USD'); //json.decode(response.body);
      // print('Response body==>${response.body.toString()}');
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              paymentIntentClientSecret: paymentIntentData!['client_secret'],
              applePay: true,
              googlePay: true,
              testEnv: true,
              style: ThemeMode.dark,
              merchantCountryCode: 'US',
              merchantDisplayName: 'ANNIE')).then((value){
      });


      ///now finally display payment sheeet

      displayPaymentSheet();
    } catch (e, s) {
      print('exception:$e$s');
    }
  }
  displayPaymentSheet() async {

    try {
      await Stripe.instance.presentPaymentSheet(
          parameters: PresentPaymentSheetParameters(
            clientSecret: paymentIntentData!['client_secret'],
            confirmPayment: true,
          )).then((newValue){


        print('payment intent'+paymentIntentData!['id'].toString());
        print('payment intent'+paymentIntentData!['client_secret'].toString());
        print('payment intent'+paymentIntentData!['amount'].toString());
        print('payment intent'+paymentIntentData.toString());
        //orderPlaceApi(paymentIntentData!['id'].toString());
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("paid successfully")));

        paymentIntentData = null;

      }).onError((error, stackTrace){
        print('Exception/DISPLAYPAYMENTSHEET==> $error $stackTrace');
      });

    } on StripeException catch (e) {
      print('Exception/DISPLAYPAYMENTSHEET==> $e');
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
            content: Text("Cancelled "),
          ));
    } catch (e) {
      print('$e');
    }
  }

  //  Future<Map<String, dynamic>>
  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount('20'),
        'currency': currency,
        'payment_method_types[]': 'card'
      };
      print(body);
      var response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            'Authorization':
            'Bearer sk_test_51GlGXbI6qfLVXcm516WAY02af4YppyTunWfMKRmtdzbqFI9HFMII1tga7EdxyimpsZyMNR8Y5IG9bghCgx2jz9XF00Pr4C6aUe',
            'Content-Type': 'application/x-www-form-urlencoded'
          });
      print('Create Intent reponse ===> ${response.body.toString()}');
      return jsonDecode(response.body);
    } catch (err) {
      print('err charging user: ${err.toString()}');
    }
  }
  calculateAmount(String amount) {
    final a = (int.parse(amount)) * 100 ;
    return a.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await makePayment();
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0Xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        foregroundColor: Colors.black,
        title: Center(child: const Text('Payment methods')),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 28.sp, left: 8.sp, right: 8.sp),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomText(
              text: ' Saved Cards',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 19.h,
            ),
            Image.asset('assets/card_black.png'),
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.all<Color>(Colors.black),
                    value: true,
                    onChanged: (value) {}),
                CustomText(
                  text: 'Use as default payment method',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: 19.h,
            ),
            Image.asset('assets/card_grey.png'),
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.all<Color>(Colors.black),
                    value: false,
                    onChanged: (value) {}),
                CustomText(
                  text: 'Use as default payment method',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ])),
    );
  }
}

