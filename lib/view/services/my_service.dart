import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/view/services/widget/my_service_text.dart';
import 'package:my_portfolio/view/services/widget/service_android_card.dart';
import 'package:my_portfolio/view/services/widget/service_ios_card.dart';
import 'package:my_portfolio/view/services/widget/service_java_card.dart';
import 'package:my_portfolio/view/services/widget/service_uiux_card.dart';

class MyService extends StatefulWidget {
  const MyService({super.key});

  @override
  State<MyService> createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  bool isAndroidHover = false,
      isIosHover = false,
      isJavaHover = false,
      isDesignHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveClass(
      mobile: LayoutBuilder(
        builder: (context,constrains){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MyServiceText(),
              const SizedBox(height: 40),

              /// Android Card
              ServiceAndroidCard(
                onHover: (value) {
                  setState(() {
                    isAndroidHover = value;
                  });
                },
                constraints: constrains,
                isHover: isAndroidHover,
              ),

              const SizedBox(height: 5),

              /// Ios Card
              ServiceIosCard(
                onHover: (value) {
                  setState(() {
                    isIosHover = value;
                  });
                },
                constraints: constrains,
                isHover: isIosHover,
              ),

              const SizedBox(height: 10),

              /// Java Card
              ServiceJavaCard(
                onHover: (value) {
                  setState(() {
                    isJavaHover = value;
                  });
                },
                constraints: constrains,
                isHover: isJavaHover,
              ),
              const SizedBox(
                height: 10,
              ),

              /// Ux/Ui Designing
              ServiceUiUxCard(
                onHover: (value) {
                  setState(() {
                    isDesignHover = value;
                  });
                },
                constraints: constrains,
                isHover: isDesignHover,
              ),
            ],
          );
        },
      ),
      tablet: LayoutBuilder(
        builder: (context,constrains){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MyServiceText(),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Android Card
                  ServiceAndroidCard(
                      onHover: (value) {
                        setState(() {
                          isAndroidHover = value;
                        });
                      },
                      constraints: constrains,
                      isHover: isAndroidHover),
                  const SizedBox(
                    width: 18,
                  ),

                  /// iOS Card
                  ServiceIosCard(
                    onHover: (value) {
                      setState(() {
                        isIosHover = value;
                      });
                    },
                    constraints: constrains,
                    isHover: isIosHover,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///  Java Card for tablet

                  ServiceJavaCard(
                      onHover: (value) {
                        setState(() {
                          isJavaHover = value;
                        });
                      },
                      constraints: constrains,
                      isHover: isJavaHover),

                  const SizedBox(
                    width: 18,
                  ),

                  /// Ui/Ux Designing Card
                  ServiceUiUxCard(
                      onHover: (value) {
                        setState(() {
                          isDesignHover = value;
                        });
                      },
                      constraints: constrains,
                      isHover: isDesignHover),
                ],
              ),
            ],
          );
        },
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const MyServiceText(),
            const SizedBox(
              height: 60,
            ),
           LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth<1400){
              return  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ServiceAndroidCard(
                        onHover: (value) {
                          setState(() {
                            isAndroidHover = value;
                          });
                        },
                        constraints: constraints,
                        isHover: isAndroidHover,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      /// iOS Service Card
                      ServiceIosCard(
                        onHover: (value) {
                          setState(() {
                            isIosHover = value;
                          });
                        },
                        constraints: constraints,
                        isHover: isIosHover,
                      ),
                    ],
                  ),



                  const SizedBox(
                    height: 18,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ServiceJavaCard(
                        onHover: (value) {
                          setState(() {
                            isJavaHover = value;
                          });
                        },
                        constraints: constraints,
                        isHover: isJavaHover,

                      ),
                      const SizedBox(
                        width: 18,
                      ),

                      ServiceUiUxCard(
                          onHover: (value) {
                            setState(() {
                              isDesignHover = value;
                            });
                          },
                          constraints: constraints,
                          isHover: isDesignHover
                      ),
                    ],
                  )
                  /// Java Service card

                ],
              );
            }else{
              return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ServiceAndroidCard(
                    onHover: (value) {
                      setState(() {
                        isAndroidHover = value;
                      });
                    },
                    constraints: constraints,
                    isHover: isAndroidHover,
                  ),
                  const SizedBox(
                    width: 18,
                  ),

                  /// iOS Service Card
                  ServiceIosCard(
                    onHover: (value) {
                      setState(() {
                        isIosHover = value;
                      });
                    },
                    constraints: constraints,
                    isHover: isIosHover,
                  ),
                  const SizedBox(
                    width: 18,
                  ),

                  /// Java Service card
                  ServiceJavaCard(
                    onHover: (value) {
                      setState(() {
                        isJavaHover = value;
                      });
                    },
                    constraints: constraints,
                    isHover: isJavaHover,

                  ),
                  const SizedBox(
                    width: 18,
                  ),

                  ServiceUiUxCard(
                      onHover: (value) {
                        setState(() {
                          isDesignHover = value;
                        });
                      },
                      constraints: constraints,
                      isHover: isDesignHover
                  ),
                ],
              );
            }
          }
           )

          ],
        ),
      ),
      paddingWidth: size.width * 0.01,
    );
  }




}
