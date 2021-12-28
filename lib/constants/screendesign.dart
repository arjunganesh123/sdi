import 'package:flutter/material.dart';

class BackFace1 extends StatefulWidget {

  Widget childwidget;
  BackFace1({required this.childwidget});

  @override
  _BackFace1State createState() => _BackFace1State();
}

class _BackFace1State extends State<BackFace1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,//overflow: Overflow.visible,
        children: [
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: CustomClipPaths(),
              child: Container(
                  height: MediaQuery.of(context).size.height*0.365,width: MediaQuery.of(context).size.width,
                  color: const Color.fromRGBO(135, 135, 135, 1)),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.16,
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                height:MediaQuery.of(context).size.height*0.86,width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromRGBO(85, 85, 85, 1),Color.fromRGBO(0, 0, 0, 1)],
                  ),
                ),
                child:widget.childwidget,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0, size.height*0.76);
    path.quadraticBezierTo(size.width*0.4, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

class CustomClipPaths extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.quadraticBezierTo(size.width*0.3, size.height*0.8, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}