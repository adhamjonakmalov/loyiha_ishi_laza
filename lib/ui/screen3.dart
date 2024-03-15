import 'package:flutter/material.dart';
import 'package:loyiha_ishi_laza/resurce/style.dart';
import 'package:loyiha_ishi_laza/widget/container.dart';
import 'package:loyiha_ishi_laza/widget/container2.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  getData1(String image, String text) {
    return Container(width: 150, height: 60, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(255, 159, 159, 159)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Image.asset(image), Text(text)]));
  }

  getData(String image, String text) {
    return Row(children: [Image.asset(image), Text(text)]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        shadowColor: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('img/3.png'),
            ),
            ListTile(
              leading: Image.asset('img/6.png'),
              title: Text('Mrh Raju', style: TextStyle(fontSize: 17)),
              subtitle: Text('Verified Profile', style: TextStyle(fontSize: 13)),
              trailing: TextButton(onPressed: () {}, child: Text('3 Orders')),
            ),
            ListTile(
              leading: Image.asset('img/7.png'),
              title: Text(
                'Dark Mode',
                style: AppStyle.style,
              ),
            ),
            getData('img/8.png', 'Dark Mode'),
            getData('img/9.png', 'Account Information'),
            getData('img/10.png', 'Password'),
            getData('img/11.png', 'Order'),
            getData('img/12.png', 'My Cards'),
            getData('img/13.png', 'Settings'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Image.asset('img/4.png')]),
            Text('Hello', style: TextStyle(fontSize: 28, color: Color(0xFF1D1E20))),
            Text(
              'Welcome to Laza.',
              style: TextStyle(fontSize: 15, color: Color(0xFF8F959E)),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xFF9775FA), borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('img/5.png'),
                ),
              ],
            ),
            Text(
              'Choose Brand',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerMenWomen(width: 115, height: 50, image: 'img/18.png', text: 'Adidas'),
                ContainerMenWomen(width: 98, height: 50, image: 'img/19.png', text: 'Nike'),
                ContainerMenWomen(width: 115, height: 50, image: 'img/20.png', text: 'Filfa'),
              ],
            ),
            Text('New Arraival', style: TextStyle(fontSize: 17)),
            ContainerMenWomen1(),
          ],
        ),
      ),
    );
  }
}
