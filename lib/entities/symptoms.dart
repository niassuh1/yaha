class Symptom {
  final String title;
  final String emoji;
  const Symptom({required this.title, required this.emoji});
}

List<Symptom> symptoms = [
  Symptom(title: 'Temperature', emoji: '🌡'),
  Symptom(title: 'Headache', emoji: '🤕'),
  Symptom(title: 'Sleep Issue', emoji: '😴'),
];
