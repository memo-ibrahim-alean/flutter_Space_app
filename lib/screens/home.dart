import 'package:flutter/material.dart';
import 'package:space_memo/main.dart';
import 'package:space_memo/screens/planet.dart';
import 'package:space_memo/screens/planet.details.dart';
import 'package:space_memo/screens/planet_repository.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Planet> planets = PlanetRepository.loadPlanets();
  int _currentIndex = 0;

  void _previousPlanet() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      } else {
        _currentIndex = planets.length - 1;
      }
    });
  }

  void _nextPlanet() {
    setState(() {
      if (_currentIndex < planets.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: ColorConstants.primaryBlackColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/rectangle_home.png',
                      width: size.width,
                      height: 237,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: size.width,
                      height: 237,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.transparent,
                            const Color(0xFF0E0E0E).withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.primaryWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      left: 30,
                      child: Text(
                        'Which planet\nwould you like to explore?',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.primaryWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: size.width * 0.912,
                    // height: size.height * 0.548,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          planets[_currentIndex].imagePath,
                          fit: BoxFit.cover,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: _previousPlanet,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 30,
                                child: Image.asset(
                                  'assets/images/icons/arrow_left_icon.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                            Text(
                              planets[_currentIndex].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: ColorConstants.primaryWhiteColor),
                            ),
                            GestureDetector(
                              onTap: _nextPlanet,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 30,
                                child: Image.asset(
                                  'assets/images/icons/arrow_right_icon.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: size.width * 0.912,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.primaryRedColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              PlanetDetails(planet: planets[_currentIndex]),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore ${planets[_currentIndex].name}',
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: ColorConstants.primaryWhiteColor),
                        ),
                        Image.asset(
                          'assets/images/icons/arrow_right_icon.png',
                          width: 24,
                          height: 24,
                        )
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
