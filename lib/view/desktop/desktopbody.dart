import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/utils/shared_component.dart';

import '../../cubit/theme_cubit.dart';
import '../../utils/metaconstants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopBodyScreen extends StatefulWidget {
  const DesktopBodyScreen({Key? key}) : super(key: key);

  @override
  State<DesktopBodyScreen> createState() => _DesktopBodyScreenState();
}

class _DesktopBodyScreenState extends State<DesktopBodyScreen> {
  static const List<String> _sectionTitles = [
    "Home",
    'Projects',
    'Skills',
    "About",
    "Contact"
  ];
  @override
  Widget build(BuildContext context) {
    Map<String, double> sectionOffsets = {
      'Home': 0.0,
      'Projects': MediaQuery.of(context).size.height / 1.5,
      'Skills': MediaQuery.of(context).size.height * 2 / 1.5,
      'About': MediaQuery.of(context).size.height * 3 / 1.5,
      'Contact': MediaQuery.of(context).size.height * 4 / 1.5,
    };
    final ScrollController scrollController = ScrollController();
    return  Scaffold(
      appBar:  AppBar(
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding:
          EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
          child: const Text(
            "Haris Akhtar's Portfolio 🙂",
            // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        actions: [
          for (final sectionTitle in _sectionTitles)
            TextButton(

              onPressed: () { scrollController.animateTo(
                sectionOffsets[sectionTitle]!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              ); },
              child: Text(
                sectionTitle,
                style: Theme.of(context).textTheme.bodyLarge,
                // style: const TextStyle(
                //   color: Colors.black,
                //   // Add a border around the text
                // ),
              ),
            ),
          const SizedBox(
            width: 30,
          ),
          // GetX<ThemeController>(
          //   builder: (themeController) => Padding(
          //     padding: EdgeInsets.only(
          //         right: MediaQuery.of(context).size.width / 18),
          //     child: Switch(
          //       value: themeController.currentThemeState == 'dark',
          //       onChanged: (value) {
          //         if (value) {
          //           themeController.switchTheme();
          //         } else {
          //           themeController.switchTheme();
          //         }
          //       },
          //     ),
          //   ),
          // )


         BlocBuilder<ThemeCubit, ThemeState>(
           builder: (context, state) {
             return Padding(
               padding: EdgeInsets.only(
                   right: MediaQuery.of(context).size.width / 18),
               child: Switch(
                 value: state.theme == blueDarkTheme(),
                 onChanged: (value) {
                   if (value) {
                     BlocProvider.of<ThemeCubit>(context).switchTheme();
                   } else {
                     BlocProvider.of<ThemeCubit>(context).switchTheme();
                   }
                 },
               ),
             );
           },
         )



        ],
      ),
body: ListView(
  controller: scrollController,
  children: <Widget>[

    SharedWidget().homeSectionWidget(context, 1.sh, 1.sw, false,"desktop"),
    SharedWidget().projectSectionWidget(context, 1.sh, 1.sw, false, "desktop"),
    SharedWidget().skillsSectionWidget(context, 1.sh, 1.sw)
,
    SharedWidget().aboutSectionWidget(context, 1.sh, 1.sw),
    SharedWidget().contactSectionWidget(context, 1.sh, 1.sw),
    SharedWidget().endingFooter(context)
  ],
),

    );
  }
}
