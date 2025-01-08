import 'package:ecommerce_app/common/widgets/custon_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custon_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  HomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// SearchBar
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// all categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///heading
                        SectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: TColors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.banner3,
                      TImages.banner1,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Popular Products
                  ProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
