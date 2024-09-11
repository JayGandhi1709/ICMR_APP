// import 'package:flutter/material.dart';
// import 'package:icmr/pages/HomePage/signIn_homePage.dart';
//
// import '../pages/SignInPage/signin.dart';
//
// class signInNavBar extends StatefulWidget {
//   signInNavBar({
//     super.key,
//     this.selectedIndex = 0,
//     required this.onTap,
//   });
//
//   int selectedIndex;
//
//   Function(int index) onTap;
//
//   @override
//   State<signInNavBar> createState() => _signInNavBarState();
// }
//
// class _signInNavBarState extends State<signInNavBar> {
//   List navItem = [
//     "Aim",
//     "Objective",
//     "Outcome",
//     "Methodology",
//     "Facilities",
//     "Workflow",
//     "Data Collction"
//   ];
//
//   int hoverdedIndex = -1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Row(
//           children: navItem.asMap().entries.map<Widget>((entry) {
//             int index = entry.key;
//             String item = entry.value;
//             return Row(
//               children: [
//                 InkWell(
//                   hoverColor: Colors.transparent,
//                   onHover: (value) {
//                     setState(() {
//                       if (value) {
//                         hoverdedIndex = index;
//                       } else {
//                         hoverdedIndex = -1;
//                       }
//                     });
//                   },
//                   onTap: () {
//                     widget.onTap(index);
//                   },
//                   splashColor: Colors.transparent,
//                   focusColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
//                     decoration: BoxDecoration(
//                       border: Border(
//                         bottom: BorderSide(
//                           color: index == widget.selectedIndex ||
//                                   index == hoverdedIndex
//                               ? Color.fromRGBO(67, 117, 246, 1)
//                               : Colors.transparent,
//                           width: 2,
//                         ),
//                       ),
//                     ),
//                     child: Text(
//                       item,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: MediaQuery.of(context).size.width * 0.014,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//               ],
//             );
//           }).toList(),
//         ),
//         const Spacer(),
//         if (widget.selectedIndex != 5)
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 widget.onTap(5);
//               });
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) => const SignIn(),
//               //   ),
//               // );
//             },
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.06,
//               width: MediaQuery.of(context).size.width * 0.09,
//               decoration: const BoxDecoration(
//                 color: Color.fromRGBO(21, 34, 102, 1),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(
//                     30,
//                   ),
//                 ),
//               ),
//               child: Center(
//                 child: Text(
//                   "Logout",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: MediaQuery.of(context).size.width * 0.014,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
