import 'package:space_memo/screens/planet.dart';

class PlanetRepository {
  static List<Planet> loadPlanets() {
    return [
      // Repeat for other planets
      Planet(
        name: 'Earth',
        imagePath: 'assets/images/earth.png',
        modelPath: 'assets/models/earth.glb',
        title: 'Earth: Our Blue Marble',
        about:
            "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms.",
        distanceFromSun: 149598026,
        lengthOfDay: 23.93,
        orbitalPeriod: 1,
        radius: 6371,
        mass: '5.972 × 10²⁴',
        gravity: 9.81,
        surfaceArea: '5.10 × 10⁸',
      ),
      Planet(
        name: 'Sun',
        imagePath: 'assets/images/sun.png',
        modelPath: 'assets/models/sun.glb',
        title: "The Sun: Our Solar System's Star",
        about:
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy.",
        distanceFromSun: 0,
        lengthOfDay: 0,
        orbitalPeriod: 0,
        radius: 695700,
        mass: '1.989 × 10³⁰',
        gravity: 274,
        surfaceArea: '6.09 × 10¹²',
      ),
      Planet(
        name: 'Mercury',
        imagePath: 'assets/images/mercury.png',
        modelPath: 'assets/models/mercury.glb',
        title: 'Mercury: The Closest Planet',
        about:
        "Mercury is the closest planet to the Sun and has the shortest orbital period. Despite its proximity, it has no atmosphere to trap heat, making it one of the most extreme temperature ranges in the solar system.",
        distanceFromSun: 57909227,
        lengthOfDay: 1407.60,
        orbitalPeriod: 0.24,
        radius: 2439.70,
        mass: '3.301 × 10²³',
        gravity: 3.7,
        surfaceArea: '7.48 × 10⁷',
      ),
      Planet(
        name: 'Mars',
        imagePath: 'assets/images/mars.png',
        modelPath: 'assets/models/mars.glb',
        title: 'Mars: The Red Planet',
        about:
            "Mars is often called the Red Planet due to its reddish hue caused by iron oxide. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting it once had a warmer, wetter climate.",
        distanceFromSun: 227943824,
        lengthOfDay: 24.62,
        orbitalPeriod: 1.88,
        radius: 3389.50,
        mass: '6.39 × 10²³',
        gravity: 3.71,
        surfaceArea: '1.45 × 10⁸',
      ),
      Planet(
        name: 'Venus',
        imagePath: 'assets/images/venus.png',
        modelPath: 'assets/models/venus.glb',
        title: "Venus: Earth's Toxic Twin",
        about:
            "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere traps heat, making it the hottest planet in our solar system.",
        distanceFromSun: 108209072,
        lengthOfDay: 5832.20,
        orbitalPeriod: 0.62,
        radius: 6051.80,
        mass: '4.867 × 10²⁴',
        gravity: 8.87,
        surfaceArea: '4.60 × 10⁸',
      ),
      // Add Jupiter, Saturn, Uranus, and Neptune similarly
    ];
  }
}
