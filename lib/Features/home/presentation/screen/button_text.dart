import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key, required this.callBackF}) : super(key: key);

  final VoidCallback callBackF;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: callBackF, child: Text("Upload this"));
  }
}
