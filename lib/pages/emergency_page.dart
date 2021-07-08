import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:header_button_layout/widgets/button.dart';
import 'package:header_button_layout/widgets/header.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Button(),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Header(
      icon: FontAwesomeIcons.plus,
      title: 'Assistência Médica',
      subtitle: 'Suas solicitações',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
      //Color(0xff526BF6),
      //Color(0xff67ACF2),
    );
  }
}
