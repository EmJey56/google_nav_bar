// This file is made by EmJey
// Project: google_nav_bar_example
// FileName: social_media
// Date: 2022/06/30
// Email: emjey561@gmail.com
// Github: EmJey56

import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { instagram, twitter, email, linkedin, github }

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: socialMediaButtons(),
    );
  }

  Widget socialMediaButtons() => Card(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialButton(
              icon: FontAwesomeIcons.instagramSquare,
              color: Color(0xff8a3ab9),
              onClicked: () => share(SocialMedia.instagram),
            ),
            buildSocialButton(
              icon: FontAwesomeIcons.twitterSquare,
              color: Color(0xFF0075fc),
              onClicked: () => share(SocialMedia.twitter),
            ),
            buildSocialButton(
              icon: FontAwesomeIcons.envelopeSquare,
              color: Color(0xFFe95950),
              onClicked: () => share(SocialMedia.email),
            ),
            buildSocialButton(
              icon: FontAwesomeIcons.linkedin,
              color: Color(0xFF0075fc),
              onClicked: () => share(SocialMedia.linkedin),
            ),
            buildSocialButton(
              icon: FontAwesomeIcons.githubSquare,
              color: Color(0xFF000000),
              onClicked: () => share(SocialMedia.github),
            ),
          ],
        ),
      );

  Future share(SocialMedia socialPlatform) async {
    final subject = "subject";
    final text = "text";
    final urlShare = "share Url";

    final urls = {
      SocialMedia.instagram: 'https://www.instagram.com/____emjey',
      SocialMedia.twitter: 'https://twitter.com/emjey56',
      SocialMedia.email: '',
      SocialMedia.linkedin: 'https://www.linkedin.com/in/emjey56/',
      SocialMedia.github: 'https://github.com/EmJey56',
    };

    final url = urls[socialPlatform]!;

    try {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Widget buildSocialButton({
    required IconData icon,
    Color? color,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        child: Container(
          width: 64,
          height: 64,
          child: Center(child: FaIcon(icon, color: color, size: 40)),
        ),
        onTap: onClicked,
      );
}
