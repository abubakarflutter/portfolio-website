import 'package:abubakar_portfolio/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/projects.dart';
import '../../project_detail/detail_view.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProjectsDetailsView()),
        );
      },
      child: MouseRegion(
        onEnter: (e) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (e) {
          setState(() {
            isHover = false;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  blurRadius: isHover ? 20 : 0,
                  spreadRadius: isHover ? 15 : 0,
                  color: bgColor,
                ),
              ],
            ),
            duration: const Duration(milliseconds: 500),
            child: Stack(
              children: [
                ///----------------Project Image
                AnimatedPositioned(
                  left: isHover ? -100 : -100,
                  top: isHover ? -50 : 0,
                  width: 450,
                  height: isHover ? 450 : 300,
                  child: Container(
                    // width: 300,
                    // height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.project.imageUrl!),
                            fit: BoxFit.cover)),
                  ),
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeOutCubic,
                ),

                ///----------------Gradient Behind Text
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeOutCubic,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topRight,
                          colors: [
                        Colors.black.withOpacity(isHover ? 0.7 : 0.2),
                        Colors.transparent
                      ])),
                ),

                ///-----------------Project Name / Title
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedDefaultTextStyle(
                          child: Text(
                            widget.project.title!,
                          ),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Colors.white
                                      .withOpacity(isHover ? 1.0 : 0.6),
                                  fontSize: isHover ? 16 : 14),
                          duration: const Duration(milliseconds: 350),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

    ///----------Previous Project Card Code
    //   Container(
    //   decoration: BoxDecoration(
    //     color: secondaryColor,
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(defaultPadding),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         // Image.asset('assets/images/bg.jpeg'),
    //         Text(
    //           project.title!,
    //           maxLines: 2,
    //           overflow: TextOverflow.ellipsis,
    //           style: Theme.of(context).textTheme.subtitle2,
    //         ),
    //         const Spacer(),
    //         Text(
    //           project.description!,
    //           maxLines: Responsive.isMobileLarge(context) ? 2 : 4,
    //           overflow: TextOverflow.ellipsis,
    //           style: const TextStyle(height: 1.5),
    //         ),
    //         const Spacer(),
    //         TextButton(
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: (context) => const ProjectsDetailsView()),
    //               );
    //             },
    //             child: const Text(
    //               'Read More >>',
    //               style: TextStyle(color: primaryColor),
    //             ))
    //       ],
    //     ),
    //   ),
    // );
  }
}
