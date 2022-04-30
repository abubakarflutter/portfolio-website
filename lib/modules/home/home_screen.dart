import 'package:abubakar_portfolio/constants.dart';
import 'package:abubakar_portfolio/modules/home/widgets/my_projects_widget.dart';
import 'package:abubakar_portfolio/responsive.dart';
import 'package:flutter/material.dart';

import '../home/widgets/dashboard_image_widget.dart';
import '../home/widgets/highlights_info_widget.dart';
import '../home/widgets/recommendation_widget.dart';
import '../side_menu/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu))),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(flex: 2, child: SideMenu()),
              // const SizedBox(
              //   width: defaultPadding,
              // ),
              Expanded(
                flex: 7,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Image.network(
                            'https://i.ibb.co/fYst2gz/bg.jpg',
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: darkColor.withOpacity(.90),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Column(
                          children: const [
                            DashboardImageWidget(),
                            HighLightsInfoWidget(),
                            MyProjectsWidget(),
                            RecommendationsWidget()

                            ///this is for our footer
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
