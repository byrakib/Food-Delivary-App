import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_class_17/themes/all_colors.dart';
import 'package:food_delivery_app_class_17/themes/all_styles.dart';
import 'package:food_delivery_app_class_17/widgets/custon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double value = 0;
  int number = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          'assets/images/svg/arrow-left.svg',
          fit: BoxFit.none,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              'assets/images/svg/search.svg',
              height: 18.0,
              width: 18.0,
            ),
          ),
        ],
      ),

      body: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Image.asset(
                    'assets/images/png/food.png',
                    height: 300.0,
                    width: 300.0,
                  ),
                ),
              ),
              Text(
                "Cheeseburger Wendy's Burger",
                style: AllStyles.headingTextStyles,
              ),
              Text('26 mins', style: AllStyles.subtitelTextStyles),

              SizedBox(height: 10.0),

              Text(
                "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
                style: AllStyles.subtitelTextStyles,
              ),

              SizedBox(height: 15.0),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            'Spicy',
                            style: AllStyles.subtitelTextStyles.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: AllColors.primaryColors,
                            inactiveTickMarkColor: Color(0xffF3F4F6),
                            thumbColor: AllColors.primaryColors,
                            overlayColor: AllColors.primaryColors.withOpacity(
                              0.5,
                            ),
                          ),
                          child: Slider(
                            value: value,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: value.toStringAsFixed(0),
                            onChanged: (newValue) {
                              setState(() {
                                value = newValue;
                              });
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mild",
                                style: AllStyles.subtitelTextStyles.copyWith(
                                  color: Color(0xff1CC019),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 6.0),
                                child: Text(
                                  "Hot",
                                  style: AllStyles.subtitelTextStyles.copyWith(
                                    color: AllColors.primaryColors,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Portion',
                            style: AllStyles.subtitelTextStyles.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustonButton(
                              color: AllColors.primaryColors,
                              icons: Icons.remove,
                              onTap: () {
                                setState(() {
                                  if (number > 1) {
                                    number--;
                                  }
                                });
                              },

                              height: 50,
                              width: 50,
                            ),

                            Text(
                              number.toString(),
                              style: AllStyles.subtitelTextStyles.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                              ),
                            ),

                            CustonButton(
                              color: AllColors.primaryColors,
                              icons: Icons.add,
                              onTap: () {
                                setState(() {
                                  number++;
                                });
                              },
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 70,
                    width: 104,
                    decoration: BoxDecoration(
                      color: AllColors.primaryColors,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Center(
                      child: Text(
                        '\$8.24',
                        style: AllStyles.subtitelTextStyles.copyWith(
                          color: AllColors.whiteColors,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 70,
                    width: 239,
                    decoration: BoxDecoration(
                      color: AllColors.secondaryColors,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'ORDER NOW',
                        style: AllStyles.subtitelTextStyles.copyWith(
                          color: AllColors.whiteColors,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
