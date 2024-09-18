import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double maxWidth = constraints.maxWidth;
//         double imageSize = maxWidth > 1000 ? 100 : (maxWidth > 800 ? 80 : 50);
//         double toolbarHeight = maxWidth > 1000 ? 150 : (maxWidth > 800 ? 120 : 70);
//         double imageGap = maxWidth > 1000 ? 20 : (maxWidth > 800 ? 15 : 10);
//
//         return AppBar(
//           backgroundColor: Colors.white,
//           automaticallyImplyLeading: false,
//           toolbarHeight: toolbarHeight,
//           flexibleSpace: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             height: toolbarHeight, // set the height of the toolbar
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/1.png', height: imageSize),
//                   SizedBox(width: imageGap),
//                   Image.asset('assets/2.png', height: imageSize),
//                   SizedBox(width: imageGap),
//                   Image.asset('assets/3.png', height: imageSize),
//                   SizedBox(width: imageGap),
//                   Image.asset('assets/4.png', height: imageSize),
//                   SizedBox(width: imageGap),
//                   Image.asset('assets/5.png', height: imageSize),
//                   SizedBox(width: imageGap),
//                   Image.asset('assets/6.png', height: imageSize),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(150); // default height to accommodate larger screens
// }
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0), // Height of the app bar
      child: AppBar(
        // Hides default back button
        backgroundColor: Colors.white,
        // AppBar background color
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              '1.png',
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Image.asset(
              '2.png',
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Image.asset(
              '3.png',
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Image.asset(
              '4.png',
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Image.asset(
              '5.png',
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Image.asset(
              '6.png',
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
