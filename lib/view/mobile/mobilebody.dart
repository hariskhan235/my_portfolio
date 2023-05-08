import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterprojects/utils/shared_component.dart';

import '../../cubit/theme_cubit.dart';
import '../../utils/metaconstants.dart';
class MobileBodyScreen extends StatefulWidget {
  const MobileBodyScreen({Key? key}) : super(key: key);

  @override
  State<MobileBodyScreen> createState() => _MobileBodyScreenState();
}

class _MobileBodyScreenState extends State<MobileBodyScreen> {
  var height= 1.sh;
  var width=1.sw;
  static const List<String> _sectionTitles = [
    "Home",
    'Projects',
    'Skills',
    "About",
    "Contact"
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: width /18),
          child: const Center(
            child:  Text(
              "Farooq's Portfolio 🙂",
              // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Row(

              children: <Widget>[

                Expanded(

                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0.sp),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: BlocBuilder<ThemeCubit, ThemeState>(
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
                  ),
                ),
              ],
            ),
            for (final sectionTitle in _sectionTitles)
              Align(
                alignment: Alignment.topCenter,
                child: ListTile(
                  title: Text(sectionTitle),
                  onTap: () {
                    // Scroll to the corresponding section

                  },
                ),
              ),
          ],
        ),
      ),

   body: ListView(

     children: [
       SharedWidget().homeSectionWidget(context, height, width, true,"none"),
       SharedWidget().projectSectionWidget(context, 1.sh, 1.sw, false, "none"),
       SharedWidget().skillsSectionWidget(context, 1.sh, 1.sw),
       SharedWidget().aboutSectionWidget(context, 1.sh, 1.sw),
       SharedWidget().contactSectionWidget(context, 1.sh, 1.sw),
       SharedWidget().endingFooter(context)
     ],
   ),
    );
  }
}
