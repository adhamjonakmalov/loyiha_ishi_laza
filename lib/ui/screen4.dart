import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String title1 = arg['title'];
    final String image1 = arg['image'];
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  image1,
                  fit: BoxFit.fill,
                  width: 500,
                  height: 650,
                ),
                Positioned(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 181, 178, 178),
                          child: Image.asset('img/22.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 181, 178, 178),
                          child: Image.asset('img/19.png'),
                        ),
                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                        child: Image.asset('img/'),
                      ),
                    )
                  ],
                ))
              ],
            ),
            const SizedBox(height: 30),
            Text(title1)
          ],
        ),
      ),
    );
  }
}
