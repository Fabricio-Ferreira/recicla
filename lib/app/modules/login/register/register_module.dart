import 'package:Recicla/app/modules/login/register/register_bloc.dart';
import 'package:Recicla/app/modules/login/register/register_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class RegisterModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RegisterBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => RegisterPage();

  static Inject get to => Inject<RegisterModule>.of();
}
