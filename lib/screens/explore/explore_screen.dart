import 'package:aspen_apk/widgets/popular_item.dart';
import 'package:aspen_apk/widgets/recommended_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  static
  var routeName;

  const ExploreScreen({
    super.key
  });

  @override
  State < ExploreScreen > createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State < ExploreScreen >
  with SingleTickerProviderStateMixin {
    late TabController _tabController;

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _tabController = TabController(length: 4, vsync: this);
    }

    @override
    void dispose() {
      // TODO: implement dispose
      _tabController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: const Color(0xFF34C759),
              currentIndex: 0,
              unselectedItemColor: Colors.black38,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '',
                ),
              ],
          ),
          body: Column(
            children: [
              const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Explore',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFF34C759),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'iExplorer',
                              style: TextStyle(
                                fontFamily: 'Hiatus',
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                              )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                                CupertinoIcons.location_solid,
                                color: Color(0xFF34C759),
                                size: 20,
                              ),
                              const SizedBox(width: 6),
                                Text(
                                  'Batam, IDN',
                                  style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xff606060)),
                                ),
                          ],
                        )
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD1D1D1),
                            borderRadius: BorderRadius.circular(24),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Find iPhone to Buy',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,
                              color: Color(0xFF34C759), ),
                          ),
                        ),
                    ),
                ),
                TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xFF34C759),
                    labelColor: const Color(0xFF34C759),
                      unselectedLabelColor: const Color(0xffb8b8b8),
                        labelStyle: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        unselectedLabelStyle: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        tabs: const [
                          Tab(text: 'Location'),
                          Tab(text: 'Hotels'),
                          Tab(text: 'Foods'),
                          Tab(text: 'Adventures'),
                        ],
                ),
                const SizedBox(height: 20),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        buildTabContent('Location'),
                        buildTabContent('Hotels'),
                        buildTabContent('Foods'),
                        buildTabContent('Adventures'),
                      ],
                    ))
            ],
          ),
        ),
      );
    }

    Widget buildTabContent(String tab) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color(0xff232323),
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xFF34C759),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                  const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PopularItem(
                            title: 'iPhone 16',
                            rating: '4.1',
                            image: 'assets/images/ip.jpg',
                          ),
                          SizedBox(width: 16),
                          PopularItem(
                            title: 'iPhone 16 Pro Max',
                            rating: '4.9',
                            image: 'assets/images/ip.jpg',
                          ),
                          SizedBox(width: 16),
                          PopularItem(
                            title: 'iPhone 16 Pro Max',
                            rating: '4.9',
                            image: 'assets/images/ip.jpg',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Store Recommendations',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: const Color(0xff232323),
                            ),
                          ),
                          Text(
                            'See All',
                            style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xFF34C759),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                        const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                RecommendedCard(
                                  title: 'iBox',
                                  duration: '5N/6D', // Mengubah durasi
                                  deal: 'Exclusive Offer', // Mengubah deal
                                  image: 'assets/images/ibox-logo.png',
                                ),
                                SizedBox(width: 16),
                                RecommendedCard(
                                  title: 'Digimap',
                                  duration: '3N/4D', // Mengubah durasi
                                  deal: 'Special Offer', // Mengubah deal
                                  image: 'assets/images/digimap-logo.jpg',
                                ),
                                SizedBox(width: 16),
                                RecommendedCard(
                                  title: 'Story-i',
                                  duration: '2N/3D', // Tetap
                                  deal: 'Best Price', // Mengubah deal
                                  image: 'assets/images/story-i-logo.png',
                                ),
                                SizedBox(width: 16),
                                RecommendedCard(
                                  title: 'Erafone',
                                  duration: '5N/6D', // Mengubah durasi
                                  deal: 'Hot Deal', // Tetap
                                  image: 'assets/images/erafone-logo.jpg',
                                ),
                                SizedBox(width: 16),
                                RecommendedCard(
                                  title: 'Urban Republic',
                                  duration: '3N/4D', // Mengubah durasi
                                  deal: 'Limited Offer', // Mengubah deal
                                  image: 'assets/images/ur-logo.png',
                                ),
                                SizedBox(width: 16),
                                RecommendedCard(
                                  title: 'Hello',
                                  duration: '2N/3D', // Mengubah durasi
                                  deal: 'Special Deal', // Mengubah deal
                                  image: 'assets/images/hello-logo.webp',
                                ),

                              ],
                            ),
                          ),
                          const SizedBox(height: 50),
              ],
            ),
          ),
      );
    }
  }