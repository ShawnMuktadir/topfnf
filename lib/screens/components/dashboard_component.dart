import 'package:flutter/material.dart';
import 'package:topfnf/data/feature_menu_data.dart';
import 'package:topfnf/utils/color_utils.dart';
import 'package:topfnf/utils/dimension_utils.dart';
import 'package:topfnf/utils/style_utils.dart';
import 'package:topfnf/widgets/dashboard_widget.dart';

class DashboardComponent extends StatefulWidget {
  const DashboardComponent({super.key});

  @override
  State<DashboardComponent> createState() => _DashboardComponentState();
}

class _DashboardComponentState extends State<DashboardComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Dimensions.smSize,
          horizontal: Dimensions.defaultSize,
        ),
        child: Column(
          children: [
            // header
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: Style.elevatedButtonCircle,
                    child: dashboardHeaderBtnWidget(
                      'assets/icons/edit.svg',
                      'Post',
                    ),
                  ),
                ),
                const SizedBox(width: Dimensions.smSize),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: Style.elevatedButtonCircle,
                    child: dashboardHeaderBtnWidget(
                      'assets/icons/list_check.svg',
                      'Categories',
                    ),
                  ),
                ),
                const SizedBox(width: Dimensions.smSize),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(
                      Dimensions.smSize,
                    ),
                    decoration: BoxDecoration(
                      color: RGB.primaryLightColor,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: const Icon(
                      Icons.search_outlined,
                      color: RGB.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
            // body
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // feature menu
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: Dimensions.smSize,
                      ),
                      width: double.infinity,
                      height: 120,
                      padding: const EdgeInsets.all(
                        Dimensions.smSize,
                      ),
                      decoration: BoxDecoration(
                        color: RGB.primaryLightColor,
                        borderRadius: BorderRadius.circular(
                          Dimensions.defaultSize,
                        ),
                      ),
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 4 / 2.75,
                            crossAxisCount: 4,
                            crossAxisSpacing: Dimensions.smSize,
                          ),
                          itemCount: featureMenuData.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(1.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      featureMenuData[index].icon,
                                      width: 24,
                                    ),
                                    const SizedBox(
                                      height: Dimensions.smSize / 1.5,
                                    ),
                                    Text(
                                      featureMenuData[index].title,
                                      style: const TextStyle(
                                        color: RGB.whiteColor,
                                        fontSize: Dimensions.smSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    // title
                    dashboardTitle('Hire a servie pro'),
                    // hire servie
                    SizedBox(
                      height: 274,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return Container(
                            width: MediaQuery.of(context).size.width / 2.25,
                            margin: EdgeInsets.only(
                              top: Dimensions.smSize,
                              bottom: Dimensions.smSize,
                              right: i < 5 ? Dimensions.smSize : 0,
                            ),
                            padding: const EdgeInsets.all(
                              Dimensions.smSize / 2,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: RGB.grayColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                Dimensions.defaultSize,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: Dimensions.smSize / 2,
                                      ),
                                      child: Text(
                                        'Plumber',
                                        style: TextStyle(
                                          fontSize: Dimensions.defaultSize + 1,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: RGB.sucessColor,
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.asset(
                                        'assets/images/hire/2.jpg',
                                        width: 74,
                                        height: 74,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: Dimensions.smSize / 2,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const Text(
                                            "\$60/Hr",
                                            style: TextStyle(
                                              fontSize: Dimensions.defaultSize,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: RGB.warningColor,
                                                size: Dimensions.defaultSize,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal:
                                                      Dimensions.smSize / 4,
                                                ),
                                                child: Transform.translate(
                                                  offset: const Offset(0, 2),
                                                  child: const Text(
                                                    '5.0',
                                                    style: TextStyle(
                                                      fontSize: Dimensions
                                                          .defaultSize,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                '(420)',
                                                style: TextStyle(
                                                  fontSize: Dimensions.smSize,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: Dimensions.smSize / 2,
                                    horizontal: Dimensions.smSize,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Jason',
                                        style: TextStyle(
                                          fontSize: Dimensions.defaultSize,
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite_outline,
                                        color: RGB.lightColor,
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.smSize,
                                  ),
                                  child: Text(
                                    'In computer science, a priority queue is an abstract data-type similar to a regular queue',
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: Dimensions.smSize + 2,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(
                                    top: Dimensions.smSize / 2,
                                    left: Dimensions.smSize,
                                    right: Dimensions.smSize,
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: Style.elevatedButtonRoundedSuccess,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/calendar.png',
                                          width: Dimensions.defaultSize,
                                        ),
                                        const SizedBox(
                                          width: Dimensions.smSize,
                                        ),
                                        const Text(
                                          'Book Now',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    // title
                    dashboardTitle('Find Services'),
                    // find Services
                    SizedBox(
                      height: 256,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, i) {
                            return Container(
                              width: MediaQuery.of(context).size.width / 2.25,
                              margin: EdgeInsets.only(
                                top: Dimensions.smSize,
                                bottom: Dimensions.smSize,
                                right: i < 5 ? Dimensions.smSize : 0,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: RGB.grayColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                  Dimensions.defaultSize,
                                ),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(
                                          Dimensions.defaultSize),
                                      topRight: Radius.circular(
                                          Dimensions.defaultSize),
                                    ),
                                    child: Image.asset(
                                      'assets/images/find/2.jpg',
                                      width: double.infinity,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: Dimensions.smSize / 2,
                                      horizontal: Dimensions.smSize,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                const Text(
                                                  'Roofing',
                                                  style: TextStyle(
                                                    fontSize:
                                                        Dimensions.defaultSize,
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    const Icon(
                                                      Icons.star,
                                                      color: RGB.warningColor,
                                                      size: Dimensions
                                                          .defaultSize,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal:
                                                            Dimensions.smSize /
                                                                4,
                                                      ),
                                                      child:
                                                          Transform.translate(
                                                        offset:
                                                            const Offset(0, 2),
                                                        child: const Text(
                                                          '5.0',
                                                          style: TextStyle(
                                                            fontSize: Dimensions
                                                                .defaultSize,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Text(
                                                      '(7)',
                                                      style: TextStyle(
                                                        fontSize:
                                                            Dimensions.smSize,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.favorite_outline,
                                              color: RGB.lightColor,
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            top: Dimensions.smSize,
                                          ),
                                          child: Text(
                                            'Discover the latest app development tools, platform updates, training, and documentation for developers across every Android device.',
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: Dimensions.smSize + 2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: Dimensions.smSize / 2,
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                'From',
                                                style: TextStyle(
                                                  fontSize:
                                                      Dimensions.smSize + 2,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Dimensions.smSize),
                                              Text(
                                                'CA 1200\$',
                                                style: TextStyle(
                                                  fontSize:
                                                      Dimensions.defaultSize,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    // extra space for overflow floatingActionButton
                    const SizedBox(height: Dimensions.lgSize),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
