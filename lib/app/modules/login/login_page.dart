import 'package:Recicla/app/modules/login/register/register_module.dart';
import 'package:Recicla/app/shared/utils/color.dart';
import 'package:Recicla/app/shared/utils/sizes.dart';
import 'package:Recicla/app/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withAlpha(150),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
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
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 400,
                decoration: BoxDecoration(
                    color: COLOR_CUSTOM_WHITE,
                    borderRadius: BorderRadius.circular(30)),
                child: ListView(
                  children: <Widget>[
                    CustomTextFieldRegister(
                      keyboardType: TextInputType.emailAddress,
                      label: 'Email',
                      style: TextStyle(
                          color: COLOR_CUSTOM_GRAY,
                          fontFamily: 'Nunito',
                          fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    CustomTextFieldRegister(
                      keyboardType: TextInputType.text,
                      label: 'Senha',
                      style: TextStyle(
                          color: COLOR_CUSTOM_GRAY,
                          fontFamily: 'Nunito',
                          fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 15,
                        color: COLOR_CUSTOM_GRAY,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      width: widthScreen,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: COLOR_CUSTOM_YELLOW)),
                        onPressed: () {},
                        color: Colors.orangeAccent,
                        disabledColor: Colors.orangeAccent.withAlpha(150),
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                              color: COLOR_CUSTOM_WHITE,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 3)),
                          child: FloatingActionButton(
                            heroTag: 'google_tag',
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/images/google_logo.png',
                              fit: BoxFit.fill,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 3)),
                          child: FloatingActionButton(
                            heroTag: 'facebook_tag',
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/images/facebook.png',
                              fit: BoxFit.fill,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    FlatButton(
                      splashColor: Colors.orangeAccent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        'Não tem conta, cadastre-se aqui!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      onPressed: () {
                        Get.to(RegisterModule());
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
