import 'package:flutter/material.dart';
import 'package:waiting_list/pages/Onboarding/onboarding_two.dart';
import 'package:waiting_list/pages/login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
                  height: 70,
                ),
                const SizedBox(
                  width: 319,
                  child: Text(
                    'Explore the World of Food Trucks',
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
                  height: 30,
                ),
                Container(
                    width: 319,
                    height: 230,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/onb1.jpg")),
                      // image: NetworkImage("https://files.fm/f/g7apyukmfh")),
                    )),
                const SizedBox(
                  height: 60,
                ),
                const SizedBox(
                  width: 332,
                  child: Text(
                    'We’ll guide you to the top food trucks in your area. Uncover diverse flavors using your location for a personalized experience.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
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
                        color: Color(0xFFDA1F2B),
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
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Container(
                        width: 101,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 101,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 29,
                              top: 14,
                              child: Text(
                                'SKIP',
                                style: TextStyle(
                                  color: Color(0xFFDA1F2B),
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
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnboardingTwo()),
                        );
                      },
                      child: Container(
                        width: 101,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 101,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFDA1F2B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 29,
                              top: 14,
                              child: Text(
                                'NEXT',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
