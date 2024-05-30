import 'package:flutter/material.dart';

class AutoscrollingImages extends StatefulWidget {
  @override
  _AutoscrollingImagesState createState() => _AutoscrollingImagesState();
}

class _AutoscrollingImagesState extends State<AutoscrollingImages> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 1000,
        child: PageView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              index == 0 ? 'assets/images/anger.jpg' : 'assets/images/smile.jpg',
              fit: BoxFit.cover,
            );
          },
          onPageChanged: (int index) {
            Future.delayed(Duration(seconds: 3), () {
              if (_controller.hasClients) {
                _controller.animateToPage(
                  (index + 1) % 2,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            });
          },
        ),
      ),
    );
  }
}
