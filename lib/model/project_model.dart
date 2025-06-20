class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
      'Xuriti Application',
      'A mobile platform for dealers for invoice processing and payments as well as company registration and KYC.Features:Proficiency in building responsive user interfaces using Flutters widget system.Implement pixel-perfect UI designs provided by the design team, ensuring a smooth user experience across diffrent devices and screen sizes.Strong knowledge of mobile application development concepts, including state management, data persistence, and asynchronous programming.',
      'assets/images/xuriti.png',
      'https://github.com/reshmakanghe/XuritiApp'),
  Project(
    'Ping Application',
    'The proposed system is to connect people in order to check their life status. Primarily will be used to be in touch with people with a minimalist approach. This is for the people to keep tabs on their dear ones not living with them.There are 4 personas accessing the system Pinger - person who sends the ping.Acknowledger - person who receives the ping and acknowledges it by sending back acknowledgment.Observer – person who just wants to observe users ping status Admin - person will monitor the overall application The pinger can also be an acknowledger or a follower & vice versa. The user will be able to view the list of Pinger enrolled in the app',
    'assets/images/ping.png',
    'https://github.com/reshmakanghe/PingApp',
  ),
  Project(
    'Indrayani Application',
    'Presenting "Online Exam App" - Indrayani Education wants to provide a facility for aspirants of the civil services. The user will be able to purchase and appear for the different exams, one or more times.',
    'assets/images/indrayani.png',
    'https://github.com/reshmakanghe/IndrayaniApp',
  ),
  Project(
    'Core-Text Application',
    'This section is the most commonly visited section in the app. When the existing user opens the app, the first article in the article wall section will be shown.A user can view the new articles by swiping up.The article details section will show the article page in an embedded browser.The website link will be opened in the section.A user will be able to select one or more article categories/topics.The user will click on a topic and the article wall with articles associated with that category will be shown.A list of active polls will be displayed to the user.Every poll will show an image and title.When the user clicks on the bookmarks, the bookmarks wall will be shown to the user.',
    'assets/images/coretext.png',
    'https://github.com/reshmakanghe/CoretextApp',
  ),
];
