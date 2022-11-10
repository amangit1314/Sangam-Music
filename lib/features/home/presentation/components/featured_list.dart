// import 'package:flutter/material.dart';
// import 'package:sangam/screens/nav/settings/settings.dart';

// class FeaturedList extends StatelessWidget {
//   const FeaturedList({
//     super.key,
//     required this.songs,
//     required this.primary,
//   });

//   final List songs;
//   final Color primary;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 350,
//       width: double.infinity,
//       child: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Featured',
//                     textAlign: TextAlign.start,
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(height: 3),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: List.generate(
//                   songs.length,
//                   (index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(right: 30),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return Settings();
//                               },
//                             ),
//                           );
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               width: 180,
//                               height: 180,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage(songs[index]),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 color: primary,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             Text(
//                               'Dark & Stormy',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Container(
//                               width: 180,
//                               child: Expanded(
//                                 child: Text(
//                                   'Jones, Smith, Williams',
//                                   maxLines: 1,
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
