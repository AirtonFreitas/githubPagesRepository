import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('lib/asset/animations/note.json', width: 200),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Em desenvolvimento...',
                style: TextStyle(fontFamily: 'George', fontSize: 32)),
          ],
        )
      ],
    );
  }
}
