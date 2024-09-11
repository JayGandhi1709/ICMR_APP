import 'package:flutter/material.dart';
import 'package:icmr/pages/HomePage/home_page.dart';
import 'package:icmr/pages/HomePage/signIn_homePage.dart';
import 'package:icmr/pages/ProjectSite/projectsite.dart';
import 'package:icmr/pages/SignInPage/signin.dart';
import 'package:icmr/pages/Objective/objective.dart';
import 'package:icmr/pages/Outcomes/outcomes.dart';
import 'package:icmr/utils/custom_app_bar.dart';
import 'package:icmr/utils/custom_nav_bar.dart';

import 'AboutProject/about_project.dart';
import 'Methodology/methodology.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  bool isLogin = true;
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
    const SignIn(),
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
