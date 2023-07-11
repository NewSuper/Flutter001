import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageAssets{
  static const String homeIcRed1Webp = 'assets/images/red/ic-red-1.webp';
  static const String homeIcRedBgWebp = 'assets/images/red/ic-red-bg.webp';
  static const String homeIcRedLightWebp = 'assets/images/red/ic-red-light.webp';
  static const String homeIcRedOpenWebp = 'assets/images/red/ic-red-open.webp';
  static const String homeIcRed2BgWebp = 'assets/images/red/ic-red2-bg.webp';
  static const String homeIcRed2BottomWebp = 'assets/images/red/ic-red2-bottom.webp';
  static const String homeIcRed2BtWebp = 'assets/images/red/ic-red2-bt.webp';
  static const String homeIcRed2TopBgWebp = 'assets/images/red/ic-red2-top-bg.webp';
  static const String homeIcRed2TopWebp = 'assets/images/red/ic-red2-top.webp';
  static const String homeIcCloseWhiteWebp = 'assets/images/red/ic-close.png';
}

class RedPage extends StatefulWidget {

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> with TickerProviderStateMixin{
  double width = 0;
  double height = 0;

  double openSize = 0;
  double btBgTopMargin = 0;

  double openBgBottomMargin = 0;
  double openBgTopMargin = 0;

  double openTopBgHeight = 0;
  double openBottomBgHeight = 0;
  double openTopBgBottomMargin = 0;
  double moveHeight = 0;
  double openHeight = 0;
  double useBtWidth = 0;

  late AnimationController controller;
  late Animation<double> animation;

  late AnimationController openBtController;
  late Animation<double> openBtAnimation;

  late AnimationController lightScaleController;
  late Animation<double> lightScaleAnimation;
  late AnimationController lightRotateController;
  late Animation<double> lightRotateAnimation;
  late AnimationController openLightScaleController;
  late Animation<double> openLightScaleAnimation;

  late AnimationController bgController;
  late Animation<Offset> bgAnimation;

  late AnimationController openController;
  late Animation<double> openAnimation;

  late AnimationController openBgController;
  late Animation<Offset> openBgAnimation;

  late AnimationController useBtController;
  late Animation<double> useBtAnimation;

  late final AnimationController offsetTopController;
  late final Animation<Offset> offsetTopAnimation;

  late AnimationController priceController;
  late Animation<double> priceAnimation;

  RxBool showOpen = false.obs;
  double price = 0;

  @override
  void initState() {
    super.initState();

    ///根据设计稿比例计算实际数值
    width = Get.width - 100;
    height = (332 / 273) * width;

    openSize = (78 / 332) * height;
    btBgTopMargin = (20 / 332) * height;

    openHeight = (332 / 273) * width;
    openBgBottomMargin = (12 / 273) * width;
    openBgTopMargin = (50 / 273) * width;

    openTopBgHeight = (194 / 273) * width;
    openBottomBgHeight = (189 / 273) * width;
    openTopBgBottomMargin = (138 / 273) * width;
    moveHeight = (143 / 273) * width;
    useBtWidth = (178 / 273) * width;

    ///红包展开动画
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      controller.forward();
    });
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    ///开按钮缩放动画
    openBtController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..repeat(reverse: true);
    openBtAnimation = Tween(begin: 1.0, end: 0.8).animate(openBtController);

    ///背景光显示动画
    openLightScaleController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    openLightScaleAnimation =
        Tween(begin: 0.4, end: 1.0).animate(openLightScaleController);

    ///背景光放大动画，只放大1.2倍
    lightScaleController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..repeat(reverse: true);
    lightScaleAnimation =
        Tween(begin: 1.0, end: 1.2).animate(lightScaleController);

    ///背景光旋转动画,微微旋转，只旋转0.02的弧度
    lightRotateController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..repeat(reverse: true);
    lightRotateAnimation =
        Tween(begin: 0.0, end: 0.02).animate(lightRotateController);

    ///红包背景上下平移动画
    bgController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..repeat(reverse: true);
    bgAnimation = Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -10))
        .animate(bgController);

    ///开红包 背景放大动画
    openController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    openAnimation = Tween(begin: 0.4, end: 1.0).animate(openController);

    ///开红包背景上下平移动画
    openBgController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..repeat(reverse: true);
    openBgAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -10))
            .animate(openBgController);

    ///开按钮缩放动画
    useBtController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..repeat(reverse: true);
    useBtAnimation = Tween(begin: 1.0, end: 0.9).animate(useBtController);

    ///卡片上移动画
    offsetTopController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    offsetTopAnimation = Tween<Offset>(
      begin: const Offset(0, 0.6),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: offsetTopController,
      curve: Curves.easeInOutCubic,
    ));

    ///金额变换效果
    price = 88.0;
    double startPrice = 0;
    if (price <= 100) {
      ///小于100的金额从0开始自增
      startPrice = 0;
    } else {
      ///大于100的金额对半开始自增
      startPrice = price / 2;
    }
    priceController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    priceAnimation =
        Tween(begin: startPrice, end: price).animate(priceController);
  }

  @override
  void dispose() {
    controller.dispose();
    openBtController.dispose();
    lightScaleController.dispose();
    lightRotateController.dispose();
    openLightScaleController.dispose();
    bgController.dispose();
    openController.dispose();
    openBgController.dispose();
    useBtController.dispose();
    offsetTopController.dispose();
    priceController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ///背景光
                  Obx(
                        () => Visibility(
                      visible: showOpen.value,
                      child: AnimatedBuilder(
                        animation: openLightScaleAnimation,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: openLightScaleAnimation.value,
                            child: AnimatedBuilder(
                              animation: lightScaleAnimation,
                              builder: (context, child) {
                                return Transform.scale(
                                  scale: lightScaleAnimation.value,
                                  child: AnimatedBuilder(
                                    animation: lightRotateAnimation,
                                    builder: (context, child) {
                                      return Transform.rotate(
                                        angle: lightRotateAnimation.value,
                                        child: Image.asset(
                                          ImageAssets.homeIcRedLightWebp,
                                          width: double.infinity,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  ///开红包前
                  AnimatedBuilder(
                      animation: animation,
                      builder: (context, child) {
                        return Transform.scale(
                            scale: animation.value,
                            child: Container(
                              margin: EdgeInsets.all(50),
                              child: AnimatedBuilder(
                                animation: bgAnimation,
                                builder: (context, child) {
                                  return Transform.translate(
                                    offset: bgAnimation.value,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          ImageAssets.homeIcRedBgWebp,
                                          width: double.infinity,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        SizedBox(
                                          height: height,
                                          width: width,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "新人见面礼",
                                                      style: TextStyle(
                                                          fontSize: 30,
                                                          color: const Color(
                                                              0xFFFFDC81)),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "$priceRellyStr元",
                                                      style: TextStyle(
                                                          fontSize: 30,
                                                          color: const Color(
                                                              0xFFFFBB81)),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                      padding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 12,
                                                          vertical: 4),

                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xFFDC1215),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(6),
                                                      ),
                                                      child: Text(
                                                        "无门槛",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: const Color(
                                                                0xFFFF862F)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                flex: 173,
                                              ),
                                              Expanded(
                                                child: Stack(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  children: [
                                                    Container(
                                                      height: double.infinity,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      margin: EdgeInsets.only(
                                                          bottom: 20),
                                                      child: Text(
                                                        "新人专享\u3000福利大派送",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xFFFF6571)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: btBgTopMargin),
                                                      child: Image.asset(
                                                        ImageAssets
                                                            .homeIcRed1Webp,
                                                        width: double.infinity,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      child: AnimatedBuilder(
                                                        animation:
                                                        openBtAnimation,
                                                        builder:
                                                            (context, child) {
                                                          return Transform
                                                              .scale(
                                                            scale:
                                                            openBtAnimation
                                                                .value,
                                                            child: Image.asset(
                                                              ImageAssets
                                                                  .homeIcRedOpenWebp,
                                                              width: openSize,
                                                              height: openSize,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      onTap: () {
                                                        controller.reverse();
                                                        showOpen.value = true;
                                                        openController
                                                            .forward();
                                                        openLightScaleController
                                                            .forward();
                                                        offsetTopController
                                                            .forward()
                                                            .whenComplete(() =>
                                                            offsetTopController
                                                                .stop());

                                                        priceController
                                                            .forward()
                                                            .whenComplete(() =>
                                                            priceController
                                                                .stop());
                                                      },
                                                    )
                                                  ],
                                                ),
                                                flex: 159,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ));
                      }),

                  ///开红包后
                  Obx(() => Visibility(
                      visible: showOpen.value,
                      child: AnimatedBuilder(
                          animation: openAnimation,
                          builder: (context, child) {
                            return Transform.scale(
                                scale: openAnimation.value,
                                child: AnimatedBuilder(
                                    animation: openBgAnimation,
                                    builder: (context, child) {
                                      return Transform.translate(
                                          offset: openBgAnimation.value,
                                          child: Container(
                                            height: openHeight,
                                            margin: EdgeInsets.all(50),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom:
                                                      openBgBottomMargin,
                                                      top: openBgTopMargin),
                                                  child: Image.asset(
                                                    ImageAssets
                                                        .homeIcRed2BgWebp,
                                                    width: double.infinity,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom:
                                                      openTopBgBottomMargin),
                                                  child: SlideTransition(
                                                      position:
                                                      offsetTopAnimation,
                                                      child: Stack(
                                                        alignment:
                                                        Alignment.center,
                                                        children: [
                                                          Image.asset(
                                                            ImageAssets
                                                                .homeIcRed2TopBgWebp,
                                                            height:
                                                            openTopBgHeight,
                                                            fit:
                                                            BoxFit.fitWidth,
                                                          ),
                                                          Container(
                                                              height:
                                                              openTopBgHeight,
                                                              width: double
                                                                  .infinity,
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                    Column(
                                                                      children: [
                                                                        Stack(
                                                                          alignment:
                                                                          Alignment.center,
                                                                          children: [
                                                                            Image.asset(
                                                                              ImageAssets.homeIcRed2TopWebp,
                                                                              height: (30 / 273) * width,
                                                                              fit: BoxFit.fitHeight,
                                                                            ),
                                                                            Container(
                                                                              width: (184 / 273) * width,
                                                                              alignment: Alignment.center,
                                                                              padding: EdgeInsets.symmetric(horizontal: 8),
                                                                              child: Text(
                                                                                "开门红包",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  color: const Color(0xFFBA683D),
                                                                                ),
                                                                                maxLines: 1,
                                                                                overflow: TextOverflow.ellipsis,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                            child:
                                                                            Container(
                                                                              alignment:
                                                                              Alignment.center,
                                                                              child:
                                                                              Row(
                                                                                crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                                mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                                children: [
                                                                                  AnimatedBuilder(
                                                                                    animation: priceController,
                                                                                    builder: (BuildContext context, Widget? child) {
                                                                                      return Text(
                                                                                        priceStr,
                                                                                        style: TextStyle(fontSize: 48, color: const Color(0xFFF30313), height: 1, fontWeight: FontWeight.bold),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  Text(
                                                                                    '元',
                                                                                    style: TextStyle(fontSize: 20, height: 2, color: Color(0xFF141414)),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ))
                                                                      ],
                                                                    ),
                                                                    flex: 128,
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                    Column(
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                          Container(
                                                                            alignment:
                                                                            Alignment.bottomCenter,
                                                                            child: Text("永久有效",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  fontSize: 12,
                                                                                  color: const Color(0xFF8A8A8A),
                                                                                  height: 1,
                                                                                )),
                                                                          ),
                                                                          flex:
                                                                          2,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                          const SizedBox(),
                                                                          flex:
                                                                          3,
                                                                        )
                                                                      ],
                                                                    ),
                                                                    flex: 65,
                                                                  )
                                                                ],
                                                              ))
                                                        ],
                                                      )),
                                                ),
                                                Image.asset(
                                                  ImageAssets
                                                      .homeIcRed2BottomWebp,
                                                  width: double.infinity,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Column(
                                                  children: [
                                                    Expanded(
                                                      child: const SizedBox(),
                                                      flex: 143,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              SizedBox(
                                                                  height: 20),
                                                              AnimatedBuilder(
                                                                  animation:
                                                                  useBtAnimation,
                                                                  builder:
                                                                      (context,
                                                                      child) {
                                                                    return Transform.scale(
                                                                        scale: useBtAnimation.value,
                                                                        child: GestureDetector(
                                                                            onTap: () {
                                                                              //todo 点击事件
                                                                            },
                                                                            child: Stack(
                                                                              alignment: Alignment.center,
                                                                              children: [
                                                                                Image.asset(
                                                                                  ImageAssets.homeIcRed2BtWebp,
                                                                                  width: useBtWidth,
                                                                                  fit: BoxFit.fitWidth,
                                                                                ),
                                                                                Text("立即领取", style: TextStyle(fontSize: 16, color: const Color(0xFFFFF0E1))),
                                                                              ],
                                                                            )));
                                                                  }),
                                                              SizedBox(
                                                                height: ((30 /
                                                                    273) *
                                                                    width),
                                                              ),
                                                              Text(
                                                                "可在“我的-优惠券”中查看",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    12,
                                                                    color: const Color(
                                                                        0xFFFF6571)),
                                                              ),
                                                            ],
                                                          )),
                                                      flex: 189,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ));
                                    }));
                          })))
                ],
              )
            ],
          ),
          //关闭按钮
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: height * 1.5, left: width),
                child: Image.asset(
                  ImageAssets.homeIcCloseWhiteWebp,
                  width: 21,
                  height: 21,
                ),
              ))
        ],
      ),
    );
  }

  ///金额数值变化
  String get priceStr {
    if (price % 1 == 0) {
      return (priceAnimation.value.toInt()).toString();
    } else {
      return priceAnimation.value.toStringAsFixed(2);
    }
  }

  ///小数据点后没有尾数则不显示
  String get priceRellyStr {
    if (price % 1 == 0) {
      return (price.toInt()).toString();
    } else {
      String pr = price.toStringAsFixed(2);
      if (pr.endsWith("0")) {
        return pr.substring(0, pr.length - 1);
      }
      return price.toStringAsFixed(2);
    }
  }
}


