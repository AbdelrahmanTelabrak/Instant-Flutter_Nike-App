import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instant/widgets/texts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/shoes_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 0;
  Color buttonColor = Colors.white;
  List<String> categories = ['All Shoes', 'Outdoor', 'Tennis', 'Soccer'];
  final _scrollController = ScrollController();

  final List<ShoeData> _shoes = [
    ShoeData('assets/images/home/shoe1.png', 'BEST SELLER', 'Nike Jordan',
        '\$302.00'),
    ShoeData('assets/images/home/shoe2.png', 'BEST SELLER', 'Nike Air Max',
        '\$752.00'),
  ];
  final List<bool> _isFavList = [false, false];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF7F7F9),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchSection(),
            const SizedBox(height: 24),
            _categorySection(),
            const SizedBox(height: 24),
            _popularSection(screenWidth),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: boldText('Explore', align: TextAlign.center),
      centerTitle: true,
      backgroundColor: const Color(0xffF7F7F9),
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/menu_home.png',
          width: 26,
          height: 18,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Badge(
            backgroundColor: Colors.red,
            smallSize: 8,
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 45,
              height: 45,
              child: IconButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                icon: SvgPicture.asset('assets/icons/shopping_bag.svg'),
              ),
            ),
          ),
        )
      ],
    );
  }

  Row _searchSection() {
    return Row(
      children: [
        Expanded(
          child: Material(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                hintText: 'Looking for shoes',
                hintStyle: const TextStyle(
                  color: Color(0xff6A6A6A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(14),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 14),
        SizedBox(
          width: 50,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {},
            shape: const OvalBorder(),
            backgroundColor: const Color(0xff0D6EFD),
            child: SvgPicture.asset('assets/icons/filters.svg'),
          ),
        ),
      ],
    );
  }

  Column _categorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        semiBoldText('Select Category', fontSize: 16),
        const SizedBox(height: 16),
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemCount: 4,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 100,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      _tabIndex = index;
                      _scrollController.animateTo(index * 50.0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut);
                    });
                  },
                  splashColor: Colors.transparent,
                  color: (_tabIndex == index)
                      ? const Color(0xff0D6EFD)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 0,
                  child: paragraphText(
                    categories[index],
                    fontSize: 12,
                    color: (_tabIndex == index) ? Colors.white : Colors.black,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column _popularSection(double screenWidth){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mediumText('Popular Shoes'),
            mediumText('See all',
                fontSize: 12, color: const Color(0xff0D6EFD)),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: ((screenWidth - 60) / 2) * (4 / 3),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _shoes.length,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemBuilder: (context, index) {
              return Container(
                width: (screenWidth - 60) / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    _shoes[index].imagePath!,
                                  )),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isFavList[index] =
                                        !_isFavList[index];
                                      });
                                    },
                                    icon: Icon(
                                        _isFavList[index]
                                            ? Icons.favorite_rounded
                                            : Icons.favorite_border_rounded,
                                        color: _isFavList[index]
                                            ? Colors.redAccent
                                            : Colors.black54),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mediumText(_shoes[index].tag!,
                                    fontSize: 12,
                                    color: const Color(0xff0D6EFD)),
                                semiBoldText(_shoes[index].name!,
                                    fontSize: 16,
                                    color: const Color(0xff6A6A6A)),
                                mediumText(_shoes[index].price,
                                    fontSize: 14),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 34,
                        height: 36,
                        child: MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          color: const Color(0xff0D6EFD),
                          padding: const EdgeInsets.all(0),
                          child: SvgPicture.asset('assets/icons/plus_icon.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
