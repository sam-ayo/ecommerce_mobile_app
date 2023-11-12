import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final String text;
  final Widget nextPage;
  const GetStartedButton(
      {super.key, required this.nextPage, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => nextPage)),
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
