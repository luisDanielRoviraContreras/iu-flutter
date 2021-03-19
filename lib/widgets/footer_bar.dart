import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: size.width,
        height: 80,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.5,
              child: Container(
                width: 75.0,
                height: 75.0,
                child: Container(
                  child: TextButton(
                      child: Image(image: AssetImage('assets/menu/Chat.png')),
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                      side: BorderSide(color: Colors.white))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white))),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70.0,
                    child: TextButton(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Image(image: AssetImage('assets/menu/Home.png')),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Inicio'),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 70.0,
                    child: TextButton(
                      child: Column(
                        children: [
                          // Icon(Icons.store_mall_directory),
                          SizedBox(
                            height: 5.0,
                          ),
                          Image(image: AssetImage('assets/menu/Bag.png')),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Tienda')
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(width: size.width * 0.20),
                  Container(
                    height: 70.0,
                    child: TextButton(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Image(image: AssetImage('assets/menu/Wallet.png')),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Wallet'),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 70.0,
                    child: TextButton(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Image(image: AssetImage('assets/menu/Profile-1.png')),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Perfil'),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(
      Offset(size.width * 0.60, 25),
      radius: Radius.elliptical(10.0, 9.0),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
