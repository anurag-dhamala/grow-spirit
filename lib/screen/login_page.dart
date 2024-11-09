import 'package:flutter/material.dart';
import 'package:grow_spirit/component/header.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(),
    );
  }
}
