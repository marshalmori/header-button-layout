import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color whiteColor = Colors.white.withOpacity(0.7);

    return Stack(
      children: [
        _BackgroundHeader(),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            FontAwesomeIcons.plus,
            size: 250,
            color: Colors.white.withOpacity(0.12),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
            ),
            Text(
              'Suas solicitações',
              style: TextStyle(fontSize: 20, color: whiteColor),
            ),
            SizedBox(height: 20),
            Text(
              'Assitência Médica',
              style: TextStyle(
                  fontSize: 30, color: whiteColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            FaIcon(
              FontAwesomeIcons.plus,
              size: 100,
              color: Colors.white,
            )
          ],
        ),
      ],
    );
  }
}

class _BackgroundHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff526BF6),
            Color(0xff67ACF2),
          ],
        ),
      ),
    );
  }
}
