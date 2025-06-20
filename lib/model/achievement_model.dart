class AchievementModel {
  final String name;
  final String organization;
  final String date;

  AchievementModel(
      {required this.name, required this.organization, required this.date});
}

List<AchievementModel> achievementsList = [
  AchievementModel(
      name: "The Star Performer of the Quarter Jan to Mar 2023",
      organization: 'Tech-trail technologies pvt.ltd.',
      date: 'March-2023')
];
