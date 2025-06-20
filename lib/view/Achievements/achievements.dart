import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/certification_controller.dart';
import 'package:flutter_portfolio/view/Achievements/components/achievement_grid.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';

class Achievemets extends StatelessWidget {
  final controller = Get.put(CertificationController());
  Achievemets({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(
            title: 'Achievemets ',
            prefix: '',
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: AchievemetsGrid(
                    crossAxisCount: 3,
                    ratio: 1.5,
                  ),
                  extraLargeScreen:
                      AchievemetsGrid(crossAxisCount: 4, ratio: 1.6),
                  largeMobile: AchievemetsGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: AchievemetsGrid(crossAxisCount: 1, ratio: 1.4),
                  tablet: AchievemetsGrid(
                    ratio: 1.7,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
