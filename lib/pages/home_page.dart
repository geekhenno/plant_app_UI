import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:speed_code_plant_app/theme/app_colors.dart';
import 'package:speed_code_plant_app/widgets/plant_card_widget.dart';
import 'package:speed_code_plant_app/widgets/top_selling_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 100,
        leading: Center(
          child: Image.asset(
            'asset/icons/menu_icon.png',
            height: 25,
            width: 25,
            color: AppColors.green,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset(
              'asset/icons/cart_icon.png',
              height: 25,
              width: 25,
              color: AppColors.green,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 35,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search for Plant',
                      hintStyle:
                          TextStyle(fontSize: 12, color: AppColors.lightGreen),
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.lightGreen,
                      )),
                )),
                const SizedBox(
                  width: 20,
                ),
                Card(
                    margin: EdgeInsets.zero,
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15),
                      child: Image.asset(
                        'asset/icons/filter_icon.png',
                        width: 20,
                        color: AppColors.lightGreen,
                      ),
                    )),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              controller: _controller,
              unselectedLabelColor: AppColors.lightGreen,
              labelColor: AppColors.green,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.darkGreen,
              tabs: const [
                Tab(
                  text: 'Indoor',
                ),
                Tab(
                  text: 'Outdoor',
                ),
                Tab(
                  text: 'Terrace',
                ),
                Tab(
                  text: 'Hanging',
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            CarouselSlider.builder(
                itemCount: 5,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return const PlantCardWidget();
                },
                options: CarouselOptions(
                    clipBehavior: Clip.none,
                    height: 300,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.72)),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                title: Text(
                  'Top Selling',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.green),
                ),
                trailing: Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.green),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TopSellingWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
