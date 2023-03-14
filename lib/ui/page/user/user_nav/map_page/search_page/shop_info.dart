import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class ShopInfo extends StatefulWidget {
  const ShopInfo({Key? key}) : super(key: key);

  static const routeName = 'shopInfo';

  @override
  State<ShopInfo> createState() => _ShopInfoState();
}

class _ShopInfoState extends State<ShopInfo> {
  List posts = ["パティスリーニキ", "サロンドego", "フランス屋"];

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

  bool _isPlaying = true;

  late CarouselSliderController _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('口コミ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Container(
                    width: 200,
                    height: 300,
                    child: CarouselSlider.builder(
                      unlimitedMode: true,
                      controller: _sliderController,
                      slideBuilder: (index) {
                        return Container(
                          alignment: Alignment.center,
                          color: colors[index],
                          child: Text(
                            letters[index],
                            style:
                                TextStyle(fontSize: 200, color: Colors.white),
                          ),
                        );
                      },
                      slideTransform: CubeTransform(),
                      slideIndicator: CircularSlideIndicator(
                        padding: EdgeInsets.only(bottom: 32),
                        indicatorBorderColor: Colors.black,
                      ),
                      itemCount: colors.length,
                      initialPage: 0,
                      enableAutoSlider: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Align(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minWidth: 240, maxWidth: 600),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              iconSize: 48,
                              icon: Icon(Icons.skip_previous),
                              onPressed: () {
                                _sliderController.previousPage();
                              },
                            ),
                            IconButton(
                              iconSize: 64,
                              icon: Icon(
                                _isPlaying
                                    ? Icons.pause_circle_outline
                                    : Icons.play_circle_outline,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    _isPlaying = !_isPlaying;
                                    _sliderController
                                        .setAutoSliderEnabled(_isPlaying);
                                  },
                                );
                              },
                            ),
                            IconButton(
                              iconSize: 48,
                              icon: Icon(Icons.skip_next),
                              onPressed: () {
                                _sliderController.nextPage();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// [お店商品紹介]
                  //   Expanded(
                  // child: ListView.builder(
                  //     itemCount: posts.length,
                  //     itemBuilder: (BuildContext cotext, int index) {
                  //       final post = posts[index];
                  //       return ListTile(
                  //         onTap: (() {
                  //           GoRouter.of(context).go('/post/post_detail');
                  //         }),
                  //         title: Text(post),
                  //       );
                  //     })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
