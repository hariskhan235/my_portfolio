import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/projects.dart';
import '../model/skills.dart';
import '../model/social_media.dart';


ThemeData blueTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF101D42),
    backgroundColor: const Color(0xFFE9ECEF),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFE9ECEF), foregroundColor: Color(0xFF212529)),
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 75.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF101D42)),
      headline2: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal),
      headline3: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFF101D42)),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
      headline5: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w200),
      bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF101D42),
      secondary: Colors.yellow,
    ),
  );
}

ThemeData blueDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: const  Color(0xFFC9E4CA),
    backgroundColor: const Color(0xFF343A40),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF343A40), foregroundColor: Color(0xFFF8F9FA)),
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 75.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFFC9E4CA)),
      headline2: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal),
      headline3: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFFC9E4CA)),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
      headline5: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w200),
      bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFC9E4CA),
      secondary: Colors.yellow,
    ),
  );
}
List<String> logos = [
  "assets/logos/FlutterLogo.png",
  "assets/logos/DartLogo.png",
  "assets/logos/FirebaseLogo.png",

];

List<Skills> skills = [
  Skills(
      imageString: "assets/logos/FlutterLogo.png",
      skillName: "Flutter",
      yearsOfExperience: "1"),
  Skills(
      imageString: "assets/logos/DartLogo.png",
      skillName: "Dart",
      yearsOfExperience: "1"),
  Skills(
      imageString: "assets/logos/FirebaseLogo.png",
      skillName: "Firebase",
      yearsOfExperience: "1"),
  Skills(
      imageString: "assets/logos/dotnet.png",
      skillName: ".net",
      yearsOfExperience: "1"),
  Skills(
      imageString: "assets/logos/adobexd.png",
      skillName: "Adobexd",
      yearsOfExperience: "1"),
  Skills(
      imageString: "assets/logos/c#.png",
      skillName: "C#",
      yearsOfExperience: "1"),

];

List<Projects> projects = [
  Projects(
      imageString: "assets/project/Project2.png",
      projectName: "CinemaNinja",
      gitlink: "https://linktr.ee/cinemaninja",
      typeOfProject: "Open Source",
      projectDescription:
      "An app created by me,"),
  Projects(
      imageString: "assets/project/Project3.png",
      projectName: "Social Media App",
      gitlink: "https://github.com/farooq958",
      typeOfProject: "Practice/Open Source",
      projectDescription: "An app created by me"),

  Projects(
      imageString: "assets/project/Project4.jpeg",
      projectName: "Restaurant  App",
      gitlink: "https://github.com/farooq958",
      typeOfProject: "Open Source",
      projectDescription: "An app created by me"),
  Projects(
      imageString: "assets/project/Project5.png",
      projectName: "Fashion App",
      gitlink: "https://github.com/farooq958",
      typeOfProject: "Open Source",
      projectDescription: "An app created by me"),
  Projects(
      imageString: "assets/logos/FirebaseLogo.png",
      projectName: "Flutter Firebase practice App",
      gitlink: "https://github.com/farooq958/FlutterFirebasePractice2022",
      typeOfProject: "Open Source",
      projectDescription: "An app created by me"),
  Projects(
      imageString: "assets/project/hijria.jpeg",
      projectName: "Flutter Islamic  App",
      gitlink: "https://play.google.com/store/apps/details?id=com.jmmtechnologies.hijricalendar",
      typeOfProject: "close confidential Source",
      projectDescription: "An app created by me"),
  // Projects(
  //     imageString: "assets/projects/Project10.png",
  //     projectName: "Smart Home App",
  //     typeOfProject: "Open Source",
  //     projectDescription: "An app created with me"),
];

final List<SocialMedia> socialMediaLinks = [
  SocialMedia(name:
  FontAwesomeIcons.github,
      link: 'https://github.com/hariskhan235'),
  SocialMedia(name: FontAwesomeIcons.linkedin, link: 'https://www.linkedin.com/in/harisakhtaroficial/'),
  //SocialMedia(name: FontAwesomeIcons.twitter, link: 'https://twitter.com/farooqafridi958?t=1bGFWitBVcPuvYeO7zAjCA&s=08'),
];


