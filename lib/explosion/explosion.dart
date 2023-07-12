import 'package:flutter/material.dart';

import 'dart:math' as Math;
import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ExplosionWidget extends StatefulWidget {
  final Rect? bound;
  int? animateTime;

  ExplosionWidget({Key? key, this.bound, this.animateTime}) : super(key: key);

  @override
  _ExplosionWidgetState createState() => _ExplosionWidgetState();
}

class _ExplosionWidgetState extends State<ExplosionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    //初始化AnimationController
    _animationController = AnimationController(
        duration: Duration(milliseconds: widget.animateTime ?? 1200),
        vsync: this);
    //页面初始化后才执行动画，不然不生效
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _animationController.value = 0;
      _animationController.forward();
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    //注销动画
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return ExplosionRenderObjectWidget(
                child: Container(
                    alignment: Alignment.center,
                    child: const RepaintBoundary()),
                progress: _animationController.value,
              );
            }));
  }
}

class ExplosionRenderObjectWidget extends RepaintBoundary {
  final double? progress;
  final Rect? bound;

  const ExplosionRenderObjectWidget(
      {Key? key, Widget? child, this.progress, this.bound})
      : super(key: key, child: child);

  @override
  _ExplosionRenderObject createRenderObject(BuildContext context) =>
      _ExplosionRenderObject(bound: bound);

  @override
  void updateRenderObject(
      BuildContext context, _ExplosionRenderObject renderObject) {
    //跟随progress变化而重新绘制
    renderObject.update(progress);
  }
}

class _ExplosionRenderObject extends RenderRepaintBoundary {
  double? progress;
  List<_Particle>? particles;
  Rect? bound;

  _ExplosionRenderObject({this.bound, RenderBox? child}) : super(child: child);

  void update(double? progress) {
    this.progress = progress;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (progress != null && progress != 0 && progress != 1) {
      if (particles == null) {
        bound ??= Rect.fromLTWH(0, 0, size.width, size.height * 2);
        particles = initParticleList(bound!);
      }
      //绘制动画
      draw(context.canvas, particles!, progress!);
    } else {
      if (child != null) {
        context.paintChild(child!, offset);
      }
    }
  }
}

const double END_VALUE = 1.4;
const double V = 3;
const double X = 5;
const double Y = 20;
const double W = 1;

List<_Particle> initParticleList(Rect bound) {
  int partLen = 15;
  List<_Particle> particles =
  List<_Particle>.filled(partLen * partLen, _Particle(), growable: true);
  ///使用随机数，用于制造自由轨迹
  Math.Random random = Math.Random(DateTime.now().millisecondsSinceEpoch);
  for (int i = 0; i < partLen; i++) {
    for (int j = 0; j < partLen; j++) {
      //生成15*15个圆圈/五角星
      particles[(i * partLen) + j] =
          generateParticle(getColorByPixel(j), random, bound);
    }
  }
  return particles;
}

//绘制样式
bool draw(Canvas canvas, List<_Particle> particles, double progress) {
  Paint paint = Paint();
  for (int i = 0; i < particles.length; i++) {
    _Particle particle = particles[i];
    particle.advance(progress);
    if (particle.alpha > 0) {
      if (i % 2 == 0) {
        ///圆圈
        paint.color = particle.color
            .withAlpha((particle.color.alpha * particle.alpha).toInt());
        canvas.drawCircle(
            Offset(particle.cx, particle.cy), particle.radius, paint);
      } else {
        ///五角星
        paint
          ..color = particle.color
              .withAlpha((particle.color.alpha * particle.alpha).toInt())
          ..style = PaintingStyle.fill;

        var initDegreen = 180;
        // 连接五角星的五个顶点，360/5，每个是72度
        final path = Path();
        var posOne = getOffsetPosition(initDegreen, particle.radius * 2);
        var posTwo = getOffsetPosition(72 + initDegreen, particle.radius * 2);
        var posThree =
        getOffsetPosition(144 + initDegreen, particle.radius * 2);
        var posfour = getOffsetPosition(216 + initDegreen, particle.radius * 2);
        var posFive = getOffsetPosition(288 + initDegreen, particle.radius * 2);
        path.moveTo(posOne.dx + particle.cx, posOne.dy + particle.cy);
        path.lineTo(posfour.dx + particle.cx, posfour.dy + particle.cy);
        path.lineTo(posTwo.dx + particle.cx, posTwo.dy + particle.cy);
        path.lineTo(posFive.dx + particle.cx, posFive.dy + particle.cy);
        path.lineTo(posThree.dx + particle.cx, posThree.dy + particle.cy);
        //最后用close的方式把path封闭起来
        path.close();

        canvas.drawPath(path, paint);
      }
    }
  }
  return true;
}

Offset getOffsetPosition(int degreen, double radius) {
  //角度转成弧度
  var radian = degreen * pi / 180;
  var dx = sin(radian) * radius;
  var dy = cos(radian) * radius;
  return Offset(dx + radius, dy + radius);
}

//生成_Partice，主要靠random.nextDouble()随机生成下一个轨迹
_Particle generateParticle(Color color, Math.Random random, Rect bound) {
  _Particle particle = _Particle();
  particle.color = color;
  particle.radius = V;
  if (random.nextDouble() < 0.2) {
    particle.baseRadius = V + ((X - V) * random.nextDouble());
  } else {
    particle.baseRadius = W + ((V - W) * random.nextDouble());
  }
  double nextDouble = random.nextDouble();
  particle.top = bound.height * ((0.18 * random.nextDouble()) + 0.2);
  particle.top = nextDouble < 0.2
      ? particle.top
      : particle.top + ((particle.top * 0.2) * random.nextDouble());
  particle.bottom = (bound.height * (random.nextDouble() - 0.5)) * 1.8;
  double f = nextDouble < 0.2
      ? particle.bottom
      : nextDouble < 0.8
      ? particle.bottom * 0.6
      : particle.bottom * 0.3;
  particle.bottom = f;
  particle.mag = 4.0 * particle.top / particle.bottom;
  particle.neg = (-particle.mag) / particle.bottom;
  f = bound.center.dx + (Y * (random.nextDouble() - 0.5));
  particle.baseCx = f;
  particle.cx = f;
  f = bound.center.dy + (Y * (random.nextDouble() - 0.5));
  particle.baseCy = f;
  particle.cy = f;
  particle.life = END_VALUE / 10 * random.nextDouble();
  particle.overflow = 0.4 * random.nextDouble();
  particle.alpha = 1;
  return particle;
}

class _Particle {
  late double alpha;
  late Color color;
  late double cx;
  late double cy;
  late double radius;
  late double baseCx;
  late double baseCy;
  late double baseRadius;
  late double top;
  late double bottom;
  late double mag;
  late double neg;
  late double life;
  late double overflow;

  void advance(double factor) {
    double f = 0;
    double normalization = factor / END_VALUE;
    if (normalization < life || normalization > 1 - overflow) {
      alpha = 0;
      return;
    }
    normalization = (normalization - life) / (1 - life - overflow);
    double f2 = normalization * END_VALUE;
    if (normalization >= 0.7) {
      f = (normalization - 0.7) / 0.3;
    }
    alpha = 1 - f;
    f = bottom * f2;
    cx = baseCx + f;
    cy = (baseCy - neg * Math.pow(f, 2.0)) - f * mag;
    radius = V + (baseRadius - V) * f2;
  }
}

Color getColorByPixel(int i) {
  //生成红黄蓝三种颜色
  if (i % 3 == 0) {
    return const Color.fromARGB(255, 255, 201, 70);
  } else if (i % 3 == 1) {
    return const Color.fromARGB(255, 241, 49, 49);
  } else {
    return const Color.fromARGB(255, 63, 67, 243);
  }
}
