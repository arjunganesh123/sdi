import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen5 extends StatefulWidget {
  static const String id='Screen5';

  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  PageController j=PageController();
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: PageView(
        controller: j,
        children: [
          page('ONBOARDING MESSAGE1', 'MESSAGE1',MediaQuery.of(context).size.height,MediaQuery.of(context).size.width),
          page('ONBOARDING MESSAGE2', 'MESSAGE2',MediaQuery.of(context).size.height,MediaQuery.of(context).size.width),
          page('ONBOARDING MESSAGE3', 'MESSAGE3',MediaQuery.of(context).size.height,MediaQuery.of(context).size.width),
        ],
      ),
      bottomNavigationBar: Container(
        height: 130,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Center(
                child:SmoothPageIndicator(
                    count: 3,
                    effect: const WormEffect(
                      dotColor: Color(0xFFD8D8D8),
                      activeDotColor: Color.fromRGBO(112, 112, 112, 1),
                    ),
                    controller: j,
                    onDotClicked: (index){
                      j.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
                      i=index;
                    }
                ) ,
              ),
            ),
            const SizedBox(height: 45),
            Row(
              children: [
                const SizedBox(width: 20),
                FlatButton(
                  onPressed: (){

                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                    child: const Text('Skip',style: TextStyle(color: Colors.black,fontSize: 15),),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: const Color.fromRGBO(112, 112, 112, 1),width: 2),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){

                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                    child: const Text('Next',style: TextStyle(color: Colors.white,fontSize: 15),),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(112, 112, 112, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipPaths2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

class CustomClipPaths1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.moveTo(0, size.height*0.75);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, size.height*0.75);
    path.lineTo(size.width, size.height*0.25);
    path.lineTo(size.width/2, 0);
    path.lineTo(0, size.height*0.25);
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
    path.moveTo(0, size.height*0.65);
    path.quadraticBezierTo(size.width*0.55, size.height*0.8, size.width, size.height*0.65);
    path.lineTo(size.width, size.height*0.2);
    path.quadraticBezierTo(size.width*0.5, 30, 0, size.height*0.2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

Widget page(String message1,String message2,double heigh,double widt){
  return SafeArea(
    child: Stack(
      children: [
        Positioned(
          bottom: -220,
          child: ClipPath(
            clipper: CustomClipPaths(),
            child: Container(
              padding: const EdgeInsets.only(top: 160),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      ClipPath(
                        clipper: CustomClipPaths1(),
                        child: Container(
                          height: 150,
                          width: 130,
                          color: const Color.fromRGBO(189, 195, 199, 1),
                        ),
                      ),
                      Positioned(
                        bottom: 37,
                        child:ClipPath(
                          clipper: CustomClipPaths2(),
                          child: Container(
                            width: 130,
                            height: 75,
                            color: const Color.fromRGBO(44, 62, 80, 1),
                          ),
                        ) ,
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Center(child: Text(message1,style: const TextStyle(color: Colors.white,fontSize: 30),)),
                  const SizedBox(height: 30),
                  Center(child: Text(message2,style: const TextStyle(color: Colors.white,fontSize: 15),)),
                ],
              ),
              height: heigh+100,width: widt,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(124, 124, 124, 1),Color.fromRGBO(0, 0, 0, 1)],
                ),
              ),),
          ),
        ),
      ],
    ),
  );
}