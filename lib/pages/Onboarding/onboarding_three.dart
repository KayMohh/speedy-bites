import 'package:flutter/material.dart';

import '../login.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title:
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  width: 319,
                  child: Text(
                    'Taste, Share, Repeat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: 1.00,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    width: 319,
                    height: 230,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/onb3.jpg")),
                    )),
                const SizedBox(
                  height: 60,
                ),
                const SizedBox(
                  width: 320,
                  // height: 350,
                  child: Text(
                    'Savor delicious bites, explore menus, and share your experiences through reviews.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      // height: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFDA1F2B),
                        shape: OvalBorder(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 320,
                            height: 50,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFDA1F2B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
