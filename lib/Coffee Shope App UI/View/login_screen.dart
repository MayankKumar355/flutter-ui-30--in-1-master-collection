import 'package:flutter/material.dart';

import '../../Coffee Maker/consts.dart';
import '../Utils/colors.dart' hide backgroundColor, buttonColor;
import 'coffee_shop_home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 90,
                  child: Image.network("https://cdn-icons-png.flaticon.com/512/2935/2935413.png"),
                ),
                const SizedBox(height: 5),
                const Text(
                  "KOKUMI",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "The Best",
                  style: TextStyle(
                    height: 0.7,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CoffeeShopHomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: buttonColor),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: buttonColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                socialIconButton(
                  Colors.white,
                  "https://cdn.freebiesupply.com/logos/large/2x/google-icon-logo-png-transparent.png",
                  "Connect with Google",
                  Colors.black,
                ),
                const SizedBox(height: 20),
                socialIconButton(
                  facebookButtondColor,
                  "https://static.vecteezy.com/system/resources/previews/021/495/960/original/facebook-logo-icon-free-png.png",
                  "Connect with Facebook",
                  Colors.white,
                ),
                const SizedBox(height: 25),
                Expanded(
                  child: Image.network("https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=600"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container socialIconButton(Color color, String image, String title, Color textColor) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(
        children: [
          const SizedBox(width: 55),
          Image.network(
            image,
            height: 25,
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
