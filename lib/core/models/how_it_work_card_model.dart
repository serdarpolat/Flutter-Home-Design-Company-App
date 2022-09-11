import 'package:flutter/material.dart' show IconData;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HowItWorkCardModel {
  HowItWorkCardModel(this.id, this.icon, this.title, this.subtitle);

  final int id;
  final IconData icon;
  final String title;
  final String subtitle;
}

List<HowItWorkCardModel> cards = [
  HowItWorkCardModel(0, FontAwesomeIcons.gift, 'Smooth Workflow', 'We provide the most easy smooth workflow of interior design.'),
  HowItWorkCardModel(1, FontAwesomeIcons.gift, 'Qualified Designers', 'Our employees are the best of the field from city.'),
  HowItWorkCardModel(2, FontAwesomeIcons.gift, 'High-End Design', 'We deliver the final work with great professional way.'),
  HowItWorkCardModel(3, FontAwesomeIcons.gift, 'Trusted Platform', 'People trust us since we opened the company in USA.'),
];
