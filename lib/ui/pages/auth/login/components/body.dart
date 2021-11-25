// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sangam/src/ui/pages/home/home_page.dart';

// class LoginBody extends StatefulWidget {
//   @override
//   _LoginBodyState createState() => _LoginBodyState();
// }

// class _LoginBodyState extends State<LoginBody> {
//   //a Controller's for email & password
//   // final _emailController = TextEditingController();
//   // final _passwordController = TextEditingController();

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _emailController.addListener(_printLatestValue);
//   //   _passwordController.addListener(_printLatestValue);
//   // }

//   // void _printLatestValue() {
//   //   print('Email text field: ${_emailController.text}');
//   //   print('Password text field: ${_passwordController.text}');
//   // }

//   // @override
//   // void dispose() {
//   //   _emailController.dispose();
//   //   _passwordController.dispose();
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           color: Color.fromRGBO(18, 22, 64, 1.0),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Image(
//               image: AssetImage('assets/images/Sangam.png'),
//               width: 500,
//               height: 400,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       border: new OutlineInputBorder(
//                         borderRadius: const BorderRadius.all(
//                           const Radius.circular(36.0),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                           style: BorderStyle.none,
//                           color: Colors.white,
//                         ),
//                       ),
//                       filled: true,
//                       hintText: "Enter Email",
//                       hintStyle: TextStyle(color: Colors.white10),
//                       contentPadding: EdgeInsets.all(16.0),
//                     ),
//                   ),
//                   SizedBox(height: MediaQuery.of(context).size.height / 35),
//                   TextField(
//                     decoration: InputDecoration(
//                       border: new OutlineInputBorder(
//                         borderRadius: const BorderRadius.all(
//                           const Radius.circular(36.0),
//                         ),
//                         borderSide: BorderSide(
//                           width: 1,
//                           style: BorderStyle.none,
//                           color: Colors.white,
//                         ),
//                       ),
//                       filled: true,
//                       hintText: "Enter Email",
//                       hintStyle: TextStyle(color: Colors.white10),
//                       contentPadding: EdgeInsets.all(32),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height / 35),
//             Container(
//               width: MediaQuery.of(context).size.width / 1.4,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(36.0),
//                 border: Border.all(color: Colors.white),
//                 color: Color.fromRGBO(18, 22, 64, 1.0),
//               ),
//               child: MaterialButton(
//                 onPressed: () {
//                   Get.to(HomePage());
//                   // Validate returns true if the form is valid, or false otherwise.
//                   // if (_formKey.currentState.validate()) {
//                   // If the form is valid, display a snackbar. In the real world,
//                   // you'd often call a server or save the information in a database.
//                   //   ScaffoldMessenger.of(context).showSnackBar(
//                   //     SnackBar(
//                   //       content: Text('Processing Data'),
//                   //     ),
//                   //   );
//                   // }
//                 },
//                 child: Text(
//                   'Login',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
