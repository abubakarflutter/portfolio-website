import 'package:abubakar_portfolio/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/projects.dart';
import '../components/project_card.dart';

class MyProjectsWidget extends StatelessWidget {
  const MyProjectsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
            mobile: ProjectsGridView(
              crossAxisCountAccordingToSize: 1,
              aspectRatioAccordingToSize: 1.7,
            ),
            mobileLarge: ProjectsGridView(
              crossAxisCountAccordingToSize: 2,
            ),
            tablet: ProjectsGridView(aspectRatioAccordingToSize: 1.1),
            desktop: ProjectsGridView())
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  final int? crossAxisCountAccordingToSize;
  final double? aspectRatioAccordingToSize;

  const ProjectsGridView({
    Key? key,
    this.crossAxisCountAccordingToSize = 3,
    this.aspectRatioAccordingToSize = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: myProjects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCountAccordingToSize!,
          childAspectRatio: aspectRatioAccordingToSize!,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index) => ProjectCard(
              project: myProjects[index],
            ));
  }
}
