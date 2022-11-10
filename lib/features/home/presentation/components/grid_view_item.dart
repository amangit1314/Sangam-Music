// import 'package:flutter/material.dart';

// class GridViewItem extends StatelessWidget {
//   final String text;
//   final String imgUrl;
//   const GridViewItem({
//     super.key,
//     required this.text,
//     required this.imgUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       width: double.maxFinite / 2,
//       decoration: BoxDecoration(
//         color: Color.fromRGBO(18, 22, 64, 1.0).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         children: [
//           Container(
//             height: 70,
//             width: MediaQuery.of(context).size.width * 0.3,
//             child: Image.asset(imgUrl, fit: BoxFit.cover),
//           ),
//           Container(
//             height: 70,
//             width: MediaQuery.of(context).size.width * 0.7,
//             child: Center(
//               child: Text(
//                 text,
//                 overflow: TextOverflow.clip,
//                 textAlign: TextAlign.start,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
