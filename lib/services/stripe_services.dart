
class StripeService {
  //Singleton
  StripeService._privateConstructor();
  static final StripeService _intance = StripeService._privateConstructor();
  factory StripeService() => _intance;
  final String stripePublishableKey =
      'pk_test_51MgU5eFUFZPibOIQjRh5zaHBlVYXp1teY9afm9EyyPpMQmVebtof9kgWbsu5s6cIEXNRCFjop1Lj6HQK9bGTuNeu00m1kKTZEM';
  final String secretKey =
      'sk_test_51MgU5eFUFZPibOIQkbaMLt0FlGojzt6GIMxgcB08PPcGeoQSBzyhswMyzz3j5SgJycLf1Y6z3LWPJql9tPsGKoR700xgRUgHt3';
  String _paymentApiUrl = 'https://api.stripe.com/v1/payment_intents';

  void init() {}
  Future pagarConTarjetaExistente({
    required String amount,
    required String currency,
    // required CreditCard card,


  }) async {}
  Future pagarConNuevaTarjeta() async {}
  Future pagarConAppleGooglePay() async {}
  Future _crearPaymentIntent() async {}
  Future _realizarPago() async {}
}








// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:stripe_payment/Constants.dart';


// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {

//   Map<String, dynamic>? paymentIntent;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stripe Payment'),
//       ),
//       body: Center(
//         child: TextButton(
//           child: const Text('Make Payment'),
//           onPressed: ()async{
//             await makePayment();
//           },
//           ),
//       ),
//     );
//   }

//   Future<void> makePayment() async {
//     try {
//       paymentIntent = await createPaymentIntent('10', 'USD'); 
//       //Payment Sheet 
//       await Stripe.instance.initPaymentSheet(
//           paymentSheetParameters: SetupPaymentSheetParameters(
//               paymentIntentClientSecret: paymentIntent!['client_secret'],
//               // applePay: const PaymentSheetApplePay(merchantCountryCode: '+92',),
//               // googlePay: const PaymentSheetGooglePay(testEnv: true, currencyCode: "US", merchantCountryCode: "+92"),
//               style: ThemeMode.dark,
//               merchantDisplayName: 'Adnan')).then((value){
//       });


//       ///now finally display payment sheeet
//       displayPaymentSheet();
//     } catch (e, s) {
//       print('exception:$e$s');
//     }
//   }

//   displayPaymentSheet() async {

//     try {
//       await Stripe.instance.presentPaymentSheet(
//           ).then((value){
//         showDialog(
//           context: context,
//           builder: (_) => AlertDialog(
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Row(
//                   children: const [
//                     Icon(Icons.check_circle, color: Colors.green,),
//                     Text("Payment Successfull"),
//                   ],
//                 ),
//               ],
//             ), 
//           ));
//         // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("paid successfully")));

//         paymentIntent = null;

//       }).onError((error, stackTrace){
//         print('Error is:--->$error $stackTrace');
//       });


//     } on StripeException catch (e) {
//       print('Error is:---> $e');
//       showDialog(
//           context: context,
//           builder: (_) => const AlertDialog(
//             content: Text("Cancelled "),
//           ));
//     } catch (e) {
//       print('$e');
//     }
//   }

//   //  Future<Map<String, dynamic>>
//   createPaymentIntent(String amount, String currency) async {
//     try {
//       Map<String, dynamic> body = {
//         'amount': calculateAmount(amount),
//         'currency': currency,
//         'payment_method_types[]': 'card'
//       };

//       var response = await http.post(
//           Uri.parse('https://api.stripe.com/v1/payment_intents'),
//           headers: {
//             'Authorization': 'Bearer $SECRET_KEY',
//             'Content-Type': 'application/x-www-form-urlencoded'
//           },
//           body: body,
//           );
//       // ignore: avoid_print
//       print('Payment Intent Body->>> ${response.body.toString()}');
//       return jsonDecode(response.body);
//     } catch (err) {
//       // ignore: avoid_print
//       print('err charging user: ${err.toString()}');
//     }
//   }

//   calculateAmount(String amount) {
//     final calculatedAmout = (int.parse(amount)) * 100 ;
//     return calculatedAmout.toString();
//   }

// }