class Planet {
  final String name;
  final String imagePath;
  final String modelPath;
  final String title;
  final String about;
  final int distanceFromSun; // in kilometers
  final double lengthOfDay; // in hours
  final double orbitalPeriod; // in Earth years
  final double radius; // in kilometers
  final String mass; // in kilograms (use String to handle scientific notation)
  final double gravity; // in m/s²
  final String surfaceArea; // in km² (use String to handle scientific notation)

  Planet({
    required this.name,
    required this.imagePath,
    required this.modelPath,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}