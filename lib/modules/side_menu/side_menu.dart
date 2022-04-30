import 'package:abubakar_portfolio/constants.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/download_resume_button_widget.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/expertise_section_widget.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/personal_skills_widget.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/professional_skills_widget.dart';
import 'package:abubakar_portfolio/modules/side_menu/widgets/social_links_widget.dart';
import 'package:flutter/material.dart';

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
                    children: const [
                      AddressInfo(title: 'Residence', value: 'Pakistan'),
                      AddressInfo(title: 'City', value: 'Faisalabad'),
                      AddressInfo(title: 'Age', value: '23'),
                      Divider(),
                      ExpertiseSectionWidget(),
                      ProfessionalSkillsWidget(),
                      Divider(),
                      PersonalSkillsSection(),
                      Divider(),
                      DownloadResumeButton(),
                      SocialLinksWidget()
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
