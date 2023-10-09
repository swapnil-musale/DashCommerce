import 'package:dash_commerce/features/authentication/controllers/onbarding_controller.dart';
import 'package:dash_commerce/utils/constants/app_colors.dart';
import 'package:dash_commerce/utils/constants/app_images.dart';
import 'package:dash_commerce/utils/constants/app_sizes.dart';
import 'package:dash_commerce/utils/constants/app_text_strings.dart';
import 'package:dash_commerce/utils/devices/app_device_utils.dart';
import 'package:dash_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: AppDeviceUtils.getAppBarHeight(),
            right: AppSizes.defaultSpace,
            child: TextButton(
              onPressed: controller.skipPage,
              child: const Text(AppTextStrings.skip),
            ),
          ),
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingContent(
                image: AppImages.onBoardingImage1,
                title: AppTextStrings.onBoardingTitle1,
                subTitle: AppTextStrings.onBoardingTitle1,
              ),
              OnboardingContent(
                image: AppImages.onBoardingImage2,
                title: AppTextStrings.onBoardingTitle2,
                subTitle: AppTextStrings.onBoardingTitle2,
              ),
              OnboardingContent(
                image: AppImages.onBoardingImage3,
                title: AppTextStrings.onBoardingTitle3,
                subTitle: AppTextStrings.onBoardingTitle3,
              ),
            ],
          ),
          Positioned(
            bottom: AppDeviceUtils.getBottomNavigationBarHeight(context),
            left: AppSizes.defaultSpace,
            child: SmoothPageIndicator(
              count: 3,
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClicked,
              effect: ExpandingDotsEffect(
                activeDotColor: isDarkMode ? AppColors.light : AppColors.dark,
                dotHeight: 6.0,
              ),
            ),
          ),
          Positioned(
            bottom: AppDeviceUtils.getBottomNavigationBarHeight(context),
            right: AppSizes.defaultSpace,
            child: ElevatedButton(
              onPressed: controller.nextPage,
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor:
                      isDarkMode ? AppColors.primaryColor : AppColors.black),
              child: const Icon(Iconsax.arrow_right_3),
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image.asset(
            image,
            width: HelperFunctions.screenWidth(context) * 0.8,
            height: HelperFunctions.screenHeight(context) * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
