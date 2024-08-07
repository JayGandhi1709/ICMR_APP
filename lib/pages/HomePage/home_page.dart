import 'package:flutter/material.dart';
import 'package:icmr/utils/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 16,left: 16,top: 16,),
        child: Column(
          children: [
            Row(
              children: [
                Text("Home",),
                SizedBox(
                  width: 10,
                ),
                Text("AboutProject",),
                SizedBox(
                  width: 10,
                ),
                Text("Project",),
                SizedBox(
                  width: 10,
                ),
                Text("Research Team",),
                SizedBox(
                  width: 10,
                ),
                Text("What's New",),
                Spacer(),
                Container(
                  decoration: BoxDecoration(

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
