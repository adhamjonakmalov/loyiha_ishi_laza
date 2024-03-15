import 'package:flutter/material.dart';
import 'package:loyiha_ishi_laza/widget/list/data.dart';

class ContainerMenWomen1 extends StatelessWidget {
  ContainerMenWomen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List argumentKeldi = arguments;
    return Expanded(
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'a', arguments: {
              'title': argumentKeldi[index].title,
              'image': argumentKeldi[index].image,
            }),
            child: Container(
              width: 100,
              height: 367,
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(data[index]['image']),
                      Positioned(child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline))),
                    ],
                  ),
                  Text(data[index]['title']),
                  Text('\$99'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
