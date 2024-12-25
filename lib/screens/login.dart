import 'package:flutter/material.dart';
import 'package:space_memo/main.dart';
import 'package:space_memo/screens/home.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: ColorConstants.primaryBlackColor,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: size.height * 0.4,
              left: 30,
              right: 30,
              child: const SizedBox(
                width: 257,
                child: Text(
                  "Explore\nThe\nUniverse",
                  style: TextStyle(
                    fontSize: 60,
                    color: ColorConstants.primaryWhiteColor,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 40,
              child: SizedBox(
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.primaryRedColor,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Home())
                    )
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                            color: ColorConstants.primaryWhiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                        color: ColorConstants.primaryWhiteColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}