import 'package:awesome_select/awesome_select.dart';
import 'package:flutter/material.dart';
import 'package:flutterstylehint/screens/view_more_screen.dart';
import 'package:flutterstylehint/utility/app_controller.dart';
import 'package:flutterstylehint/widget/show_gridview.dart';
import 'package:flutterstylehint/widget/widget_image_network.dart';
import 'package:flutterstylehint/widget/widget_text.dart';
import 'package:get/get.dart';
import 'package:flutterstylehint/utility/app_service.dart';

String? dropdownValue = 'ALL';

class ForyouPage extends StatefulWidget {
  const ForyouPage({super.key});

  @override
  State<ForyouPage> createState() => _ForyouPageState();
}

class _ForyouPageState extends State<ForyouPage> {
  @override
  Widget build(BuildContext context) {
    return GetX(
        init: AppController(),
        builder: (AppController appController) {
          print('demoModels --> ${appController.demoModels.length}');
          return appController.demoModels.isEmpty
              ? const SizedBox()
              : ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Expanded(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          items: <String>['ALL','WOMEN', 'MEN', 'KIDSBABY']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            );
                          }).toList(),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                              if (dropdownValue == 'ALL') {
                                AppService().get_all();
                              } else if (dropdownValue == 'WOMEN') {
                                AppService().get_womencategory();
                              } else if (dropdownValue == 'MEN') {
                                AppService().get_mencategory();
                              } else if (dropdownValue == 'KIDSBABY') {
                                AppService().get_kidcategory();
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: appController.catigoryModels.length + 1,
                          itemBuilder: (context, index) {
                            if (index < appController.catigoryModels.length) {
                              //<-- returns each injected widget in list.
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    WidgetImageNetwork(
                                      urlImage: appController
                                          .catigoryModels[index].url,
                                      height: 100,
                                      boxFit: BoxFit.contain,
                                    ),
                                    WidgetText(
                                        data: appController
                                            .catigoryModels[index].tags)
                                  ],
                                ),
                              );
                            }
                            //
                            // int itemIndex = index - appController.catigoryModels.length;
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.grey),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      iconSize: 20,
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ViewMoreScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'View More',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WidgetText(
                                  data: 'Filter(16)',
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontSize: 18),
                                ),
                                Icon(Icons.tune),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WidgetText(
                                  data: 'Sort',
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontSize: 18),
                                ),
                                Icon(Icons.swap_vert),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ShowGridView(
                      demoModels: appController.demoModels,
                    ),
                  ],
                );
        });
  }
}
