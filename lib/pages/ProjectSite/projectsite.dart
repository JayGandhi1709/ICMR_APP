import 'package:flutter/material.dart';

class ProjectSites extends StatefulWidget {
  const ProjectSites({super.key});

  @override
  State<ProjectSites> createState() => _ProjectSitesState();
}

class _ProjectSitesState extends State<ProjectSites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Image.asset(
            'sites/sites.png',
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
      ),
    );
  }
}
