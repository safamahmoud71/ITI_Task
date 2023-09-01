import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String text ;
  CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            ),
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
            elevation: MaterialStateProperty.all(0.0),
            minimumSize: MaterialStateProperty.all(const Size(200, 50))
        ),
        child: Text(text , style: TextStyle(color: Colors.black87
        ),));
  }
}