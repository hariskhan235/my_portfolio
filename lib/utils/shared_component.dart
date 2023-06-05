import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/utils/widgets/contact_info_widget.dart';
import 'package:flutterprojects/utils/widgets/download_resume_widget.dart';
import 'package:flutterprojects/utils/widgets/social_media_icons_widget.dart';
import 'package:flutterprojects/utils/widgets/typewriter_text_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'metaconstants.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SharedWidget {
  Widget homeSectionWidget(
      BuildContext context, heigth, width, bool ismobile, tabletordektop) {
    return SizedBox(
      height: ismobile ? heigth / 1.2 : heigth / 1.5,
      child: ismobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 40),
                      // width: 200,
                      // height: 300,
                      child: Center(
                        child: Image.asset(
                          "assets/images/me.jpeg",
                          scale: 1.1,
                          fit: BoxFit.contain,
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            '{"I_Am:',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(fontSize: 16),
                          ),
                        ),
                        const Flexible(
                            child: TypeWriterTextWidget(
                          fontSize: 36,
                        )),

                        const Flexible(child: SocialMediaIconsWidget()),
                        const SizedBox(height: 20),
                        //const Flexible(flex:2,child: DownloadResume())
                      ],
                    ),
                  ),
                ),
                // Add the Lottie widget here
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: width / 18,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Text(
                            '{"I_Am:',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: Align(
                            child: TypeWriterTextWidget(
                              fontSize: 75,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Flexible(child: SocialMediaIconsWidget()),

                        //const  Flexible(child:  DownloadResume())
                      ],
                    ),
                  ),
                ),
                // Add the Lottie widget here
                Container(
                    margin: EdgeInsets.only(right: width / 18 * 2, left: 10),
                    // widt5h: 200,
                    // height: 300,
                    child: Center(
                      child: Image.asset(
                        "assets/images/me.jpeg",
                        scale: tabletordektop == "tablet" ? 0.9 : 0.6,
                        fit: BoxFit.contain,
                      ),
                    )),
              ],
            ),
    );
  }

  Widget projectSectionWidget(
      BuildContext context, heigth, width, bool ismobile, tabletordesktop) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      height: heigth / 1.5,
      child: Center(
        child: Column(children: [
          Expanded(
              child: Center(
                  child: Text("Projects",
                      style: Theme.of(context).textTheme.displaySmall))),
          Expanded(
            flex: 4,
            child: SizedBox(
              height: heigth / 1.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final Uri url = Uri.parse(projects[index].gitlink);
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: GestureDetector(
                            onTap: () async {
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                projects[index].imageString,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            width: 250,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    projects[index].projectName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () async {
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                                    icon: const FaIcon(
                                      FontAwesomeIcons.link,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget skillsSectionWidget(BuildContext context, heigth, width) {
    return SizedBox(
      height: heigth / 1.5,
      child: Center(
        child: Column(children: [
          Expanded(
              child: Center(
                  child: Text("Skills",
                      style: Theme.of(context).textTheme.displaySmall))),
          Expanded(
            flex: 4,
            child: SizedBox(
              height: heigth / 1.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              skills[index].imageString,
                              fit: BoxFit.cover,
                              height: 80,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Text(skills[index].skillName,
                                style:
                                    Theme.of(context).textTheme.headlineMedium))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget aboutSectionWidget(BuildContext context, heigth, width) {
    return SizedBox(
      height: heigth / 2,
      child: Column(
        children: [
          Expanded(
            child: Center(
                child: SelectableText("About",
                    style: Theme.of(context).textTheme.displaySmall)),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 18),
              child: FittedBox(
                fit: BoxFit.contain,
                child: SelectableText(
                  "As a Professional and creative individual, I always \n  Thrive for the challenging environment which drive me  to achieve my goals. \n Moreover to pursue my own aspirations, I am passionate about helping others to reach their \n full potential and contribute to a better world. \n With my strong drive and technical skills, as detailed in my resume, \n I am confident in my ability to successfully execute any project or goal I set my mind to. \n -Haris",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget contactSectionWidget(BuildContext context, heigth, width) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      height: heigth / 1.5,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: const [
                Flexible(
                    flex: 1,
                    child: ContactInfo(
                      heading: "Email:",
                      info: "harisakhtar022@gmail.com",
                    )),

                Flexible(
                    child: ContactInfo(
                  heading: "Mobile Number:",
                  info: "            +923139848047         ",
                )),

                Flexible(child: SocialMediaIconsWidget()),

                //   Flexible(child:  DownloadResume())
              ],
            ),
          ),
          //  const Expanded(flex:1,child: CircleAvatar(
          //      maxRadius: 150,
          //      backgroundImage: AssetImage("assets/images/me2.png"),
          //      //child: Image.asset("assets/images/me2.png",fit: BoxFit.fill,)
          //  ))
        ],
      ),
    );
  }

  Widget endingFooter(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.background,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: const Center(
          child: Text(
              "© 2023 M Haris Akhtar. All Rights Reserved. Website created with Flutter ❤️"),
        ));
  }
}
