import 'package:Recicla/app/shared/utils/color.dart';
import 'package:Recicla/app/shared/utils/sizes.dart';
import 'package:Recicla/app/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 8, right: 8, bottom: 8),
                child: CustomTextFieldRegister(
                  keyboardType: TextInputType.text,
                  label: 'Nome',
                  style: TextStyle(
                      color: COLOR_CUSTOM_GRAY,
                      fontFamily: 'Nunito',
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFieldRegister(
                  keyboardType: TextInputType.text,
                  label: 'Sobrenome',
                  style: TextStyle(
                      color: COLOR_CUSTOM_GRAY,
                      fontFamily: 'Nunito',
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFieldRegister(
                  keyboardType: TextInputType.emailAddress,
                  label: 'Email',
                  style: TextStyle(
                      color: COLOR_CUSTOM_GRAY,
                      fontFamily: 'Nunito',
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFieldRegister(
                  keyboardType: TextInputType.phone,
                  label: 'Telefone',
                  style: TextStyle(
                      color: COLOR_CUSTOM_GRAY,
                      fontFamily: 'Nunito',
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                child: Container(
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
                      'CADASTRAR',
                      style: TextStyle(
                          color: COLOR_CUSTOM_WHITE,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
