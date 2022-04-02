import 'dart:html' as html;

import 'package:abubakar_portfolio/constants.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/expertise_section_widget.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/personal_skills_widget.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/professional_skills_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/address_info_widget.dart';
import 'widgets/drawer_image_info_widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            const MyAvatarAndName(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const AddressInfo(title: 'Residence', value: 'Pakistan'),
                      const AddressInfo(title: 'City', value: 'Faisalabad'),
                      const AddressInfo(title: 'Age', value: '23'),
                      const Divider(),
                      const ExpertiseSectionWidget(),
                      const ProfessionalSkillsWidget(),
                      const Divider(),
                      const PersonalSkillsSection(),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding / 2),
                        child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    'DOWNLOAD CV',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color),
                                  ),
                                  const SizedBox(
                                    width: defaultPadding / 2,
                                  ),
                                  SvgPicture.asset('assets/icons/download.svg')
                                ],
                              ),
                            )),
                      ),
                      Container(
                        color: const Color(0xFF24242E),
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                html.window.open(
                                    'https://linkedin.com/in/abubakarflutter',
                                    'new tab');
                              },
                              icon:
                                  SvgPicture.asset('assets/icons/linkedin.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/github.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/dribble.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/behance.svg'),
                            ),
                            const Spacer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
