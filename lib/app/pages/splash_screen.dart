import 'dart:async';

import 'package:Recicla/app/modules/login/login_module.dart';
import 'package:Recicla/app/shared/utils/color.dart';
import 'package:Recicla/app/shared/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreemState createState() => _SplashScreemState();
}

class _SplashScreemState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.off(LoginModule());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withAlpha(150),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orangeAccent, width: 3)),
              child: Image.asset(
                'assets/images/recicla.png',
                fit: BoxFit.cover,
                color: COLOR_CUSTOM_GREEN,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Recicla',
                    style: TextStyle(
                      color: COLOR_CUSTOM_GREEN,
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Transformando sua forma de reciclar',
                    style: TextStyle(
                      color: COLOR_CUSTOM_GREEN,
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heightScreen * 0.10,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.orangeAccent),
            )
          ],
        ),
      ),
    );
  }
}
