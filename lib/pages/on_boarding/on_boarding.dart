import 'package:ecommerce_app/pages/homepage/homepage.dart';
import 'package:ecommerce_app/pages/on_boarding/components/get_started_button.dart';
import 'package:ecommerce_app/pages/on_boarding/description.dart';
import 'package:ecommerce_app/pages/on_boarding/heading.dart';
import 'package:ecommerce_app/pages/on_boarding/logo.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(),
                SizedBox(
                  height: 0,
                ),
                Heading(text: 'Just Do it'),
                SizedBox(
                  height: 25,
                ),
                Description(
                    text:
                        'Brand new sneakers and custom kicks made with premium quality'),
                SizedBox(
                  height: 50,
                ),
                GetStartedButton(text: 'Get Started', nextPage: HomePage()),
              ],
            ),
          ),
        ));
  }
}
