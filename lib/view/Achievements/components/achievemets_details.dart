import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/achievement_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../model/certificate_model.dart';
import '../../../../res/constants.dart';
import '../../../../view model/getx_controllers/certification_controller.dart';

class AchievementsStack extends StatelessWidget {
  final controller = Get.put(CertificationController());
  AchievementsStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(defaultPadding),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        duration: const Duration(milliseconds: 500),
        child: Row(
          children: [
            // Left Half: Animated GIF
            Expanded(
              flex: 1, // Takes 50% of the space
              child: Center(
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.5, end: 1.0),
                  duration: Duration(seconds: 1),
                  curve: Curves.easeOutCirc,
                  builder: (context, double scale, child) {
                    return Transform.scale(
                      scale: scale,
                      child: Image.asset(
                        'assets/images/award2.gif', // Ensure the image is in your assets
                        height: 200,
                        width: 200,
                      ),
                    );
                  },
                ),
              ),
            ),

            // Right Half: Achievement Details
            Expanded(
              flex: 1, // Takes the other 50%
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                children: [
                  Text(
                    achievementsList[index].name,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    achievementsList[index].organization,
                    style: const TextStyle(color: Colors.amber),
                  ),
                  Text(
                    achievementsList[index].date,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
