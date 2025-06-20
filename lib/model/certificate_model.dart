class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Certification of Completion Introduction to Flutter Course',
    organization: 'SimpliLearn SkillUP',
    date: 'Oct 2023',
    skills: 'Flutter . Dart',
    credential: 'https://simpli-web.app.link/e/bJIGJR452Rb',
  ),
  CertificateModel(
    name: 'Certification of Completion for Flutter for Beginners',
    organization: 'Great Learning',
    date: 'Nov 2023',
    skills: 'Flutter . Flutter Lifecycle . Basic Widgets',
    credential:
        'https://drive.google.com/file/d/1kQHIcTX_EqcQ3CTVQxHfrdzofzquTaZ5/view?usp=drive_link',
  ),
];
