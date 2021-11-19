class Doctor {
  final String firstName;
  final String lastName;
  final String specialization;
  final double rating;
  final double phoneNumber;
  final Location location;

  const Doctor({
    required this.firstName,
    required this.lastName,
    required this.rating,
    required this.specialization,
    required this.phoneNumber,
    required this.location,
  });
}

class Location {
  final String locationName;
  final String locationDetails;
  const Location({required this.locationName, required this.locationDetails});
}
