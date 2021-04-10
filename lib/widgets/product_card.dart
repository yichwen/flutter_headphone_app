import 'package:flutter/material.dart';
import 'package:headphone_app_store/style.dart';

class ProductCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final int color;

  const ProductCard({Key key, this.imgUrl, this.name, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 165,
        height: 240,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
                child: Container(
                  width: 140,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        offset: Offset(0, 10),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: -2,
              top: 20,
              child: Image.asset(
                imgUrl,
                width: 120,
                height: 120,
              ),
            ),
            Positioned(
              left: 30,
              bottom: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: productTitleStyle,
                  ),
                  Text(
                    'colors $color',
                    style: productsubTitleStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
