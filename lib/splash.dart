// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_ui_kit/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'images/splash.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 15, 8, 5),
              child: Center(
                child: Text(
                  'We help creative people',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 3, 8, 5),
              child: Center(
                child: Text(
                  'find a job the"ll love',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 40,
                top: 30,
                right: 50,
                left: 50,
              ),
              child: Center(
                child: Text(
                  'Connect here and let\'s show you how the world evolves',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xff008080), // red as border color
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
               MaterialPageRoute(
                       builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xff008080),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //   Container(
            //   decoration: BoxDecoration(
            //    border: Border.all(
            //     width: 2,
            //    color: Colors.green.shade300, // red as border color
            //   ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(100.0),
            //    ),
          //  onPressed: () {
            //        Navigator.of(context).push(
            //          MaterialPageRoute(
            //            builder: (context) => HomePage(),
            //          ),
              ///      );
              //    },
            //  ),
            //  child: Container(
            //      margin: EdgeInsets.all(5.0),
            ////    decoration: const ShapeDecoration(
            //     color: Colors.green,
            //       shape: CircleBorder(),
            //    ),
            ////   child: IconButton(
            //    icon: Icon(Icons.arrow_forward, size: 40,),
            //    onPressed: () {

            // },
            //    ),
            //  ),
            //   )
          ],
        ),
      ),
    );
  }
}
