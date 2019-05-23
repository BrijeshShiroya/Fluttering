import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final Function onTapButton;

  ButtonControl(this.onTapButton);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        onTapButton();
      },
      child: Text('Add Prouct'),
    );
  }
}
