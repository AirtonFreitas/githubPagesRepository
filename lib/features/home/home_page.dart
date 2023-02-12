import 'package:airton_freitas_github_io/features/home/components/banner_profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    final widthContainer = MediaQuery.of(context).size.width;
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ProfileRowWidget(widthContainer),
    ]);
  }
}
