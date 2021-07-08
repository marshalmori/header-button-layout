import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color1;
  final Color color2;

  const Header({
    @required this.icon,
    @required this.title,
    @required this.subtitle,
    this.color1 = Colors.blueGrey,
    this.color2 = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    final Color whiteColor = Colors.white.withOpacity(0.7);

    return Stack(
      children: [
        _BackgroundHeader(
          color1: this.color1,
          color2: this.color2,
        ),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,
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
              this.subtitle,
              style: TextStyle(fontSize: 20, color: whiteColor),
            ),
            SizedBox(height: 20),
            Text(
              this.title,
              style: TextStyle(
                  fontSize: 30, color: whiteColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            FaIcon(
              this.icon,
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
  final Color color1;
  final Color color2;

  const _BackgroundHeader({@required this.color1, @required this.color2});

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
            this.color1,
            this.color2,
            //Color(0xff526BF6),
            //Color(0xff67ACF2),
          ],
        ),
      ),
    );
  }
}
