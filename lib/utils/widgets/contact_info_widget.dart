import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final String heading;
  final String info;
  const ContactInfo({super.key, required this.heading, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Align(
            alignment:Alignment.center,child: Text(heading, style: Theme.of(context).textTheme.headline5))),
         Expanded(child: SelectableText(info, style: Theme.of(context).textTheme.headline6))
      ],
    );
  }
}
