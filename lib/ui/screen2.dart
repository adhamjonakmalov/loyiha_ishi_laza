import 'package:flutter/material.dart';
import 'package:loyiha_ishi_laza/resurce/style.dart';
import 'package:loyiha_ishi_laza/ui/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isColor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 131, 80, 234), Color.fromARGB(255, 72, 31, 139)],
          ),
        ),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset('img/2.png'),
                    Positioned(
                      right: 15,
                      left: 15,
                      bottom: 20,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                        width: 345,
                        height: 244,
                        child: Column(
                          children: [
                            Text(
                              'Look Good, Feel Good',
                              style: TextStyle(color: Colors.black, fontSize: 26),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Create your individual & unique style and look amazing everyday.',
                                style: AppStyle.one_style,
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isColor = !isColor;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 152,
                                  height: 60,
                                  decoration: BoxDecoration(color: isColor ? Color.fromARGB(255, 115, 0, 255) : Color(0xFFF5F6FA), borderRadius: BorderRadius.circular(10)),
                                  child: Text('Men'),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isColor = !isColor;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 152,
                                  height: 60,
                                  decoration: BoxDecoration(color: isColor ? Color(0xFFF5F6FA) : Color.fromARGB(255, 115, 0, 255), borderRadius: BorderRadius.circular(10)),
                                  child: Text('Women'),
                                ),
                              )
                            ]),
                            SizedBox(height: 30),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3()));
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
