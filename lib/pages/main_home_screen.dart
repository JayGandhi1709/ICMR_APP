import 'package:flutter/material.dart';
import 'package:icmr/utils/custom_app_bar.dart';
import 'package:icmr/utils/custom_nav_bar.dart';

import 'afterLogin/methodology.dart';
import 'afterLogin/objective.dart';
import 'afterLogin/outcomes.dart';
import 'afterLogin/signIn_homePage.dart';
import 'beforeLogin/about_project.dart';
import 'beforeLogin/home_page.dart';
import 'beforeLogin/projectsite.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  bool isLogin = false;
  int selectedIndex = 0;
  List<Widget> loginScreens = [
    const SigninHomepage(),
    const Objective(),
    const OutcomePage(),
    const Methodology(),
    const Text("Facilities"),
    const Text("Workflow"),
    const Text("Data Collection"),
    const HomePage(),
  ];
  List<Widget> afterLoginScreens = [
    const HomePage(),
    const AboutProjectPage(),
    const ProjectSites(),
    const Text("research Team"),
    const Text("what's new"),
    const SigninHomepage(),
  ];

  List navItem = [
    "Home",
    "About Project",
    "Project Site",
    "Research Team",
    "What's New",
    "Login"
  ];

  List loggedInNavItem = [
    "Aim",
    "Objective",
    "Outcome",
    "Methodology",
    "Facilities",
    "Workflow",
    "Data Collection",
    "Logout"
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = isLogin ? loginScreens : afterLoginScreens;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            customNavBar(
              selectedIndex: selectedIndex,
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              navItem: isLogin ? loggedInNavItem : navItem,
            ),
            Expanded(child: tabs[selectedIndex]),
          ],
        ),
      ),
    );
  }
}
