import 'package:flutter/material.dart';

// import 'screens/login.dart';
// import 'screens/signup.dart';
import 'widgets/background_painter.dart';

class LiquidPage extends StatefulWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color lineColor;
  final Widget page1;
  final Widget page2;
  final Duration duration;
  AnimationController controller;
  LiquidPage({
    Key? key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.lineColor,
    required this.page1,
    required this.page2,
    required this.duration,
    required this.controller,
  }) : super(key: key);

  @override
  State<LiquidPage> createState() => _LiquidPageState();
}

class _LiquidPageState extends State<LiquidPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isLogin = true;

  ValueNotifier<bool> showSignInPage = ValueNotifier<bool>(true);

  void changeAuth() {
    if (isLogin) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(
                animation: _controller,
                color1: widget.color1,
                color2: widget.color2,
                color3: widget.color3,
                lineColor: widget.lineColor,
              ),
            ),
          ),
          Center(
              child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: isLogin ? widget.page1 : widget.page2,
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (() {
        changeAuth();
      })),
    );
  }
}
