import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: IdentityCard(),
          ),
          Search(),
          GridKepegawaian(),
          KepegawaianMenus(),
          GridAkademik(),
          AkademikMenus()
        ],
      ),
    );
  }
}

class AkademikMenus extends StatefulWidget {
  const AkademikMenus({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  State<AkademikMenus> createState() => _AkademikMenusState();
}

class _AkademikMenusState extends State<AkademikMenus> {
  int selectedMenuItemIndex =
      -1; // Index yang dipilih, -1 artinya tidak ada yang dipilih

  List<Map<String, dynamic>> menuItems = [
    {'icon': 'assets/icons/icon_8.svg', 'text': 'INSENTIF'},
    {'icon': 'assets/icons/icon_9.svg', 'text': 'SIKAD'},
    {'icon': 'assets/icons/icon_10.svg', 'text': 'SIKEMAS'},
    {'icon': 'assets/icons/icon_11.svg', 'text': 'SIMPEL'},
  ];

  final double boxSize = 70;
  final double selectedBorderWidth = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 15,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Ubah status isSelected saat item di-tap
              setState(() {
                if (selectedMenuItemIndex == index) {
                  // Jika item yang sama di-tap lagi, batalkan seleksi
                  selectedMenuItemIndex = -1;
                } else {
                  // Jika item yang berbeda di-tap, perbarui seleksi
                  selectedMenuItemIndex = index;
                }
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: selectedMenuItemIndex == index
                          ? Colors.green
                          : const Color.fromARGB(255, 159, 159, 159),
                      width: selectedMenuItemIndex == index
                          ? selectedBorderWidth
                          : 1.0,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      menuItems[index]['icon'],
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  menuItems[index]['text'],
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GridAkademik extends StatelessWidget {
  const GridAkademik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Akademik",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class KepegawaianMenus extends StatefulWidget {
  const KepegawaianMenus({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KepegawaianMenusState createState() => _KepegawaianMenusState();
}

class _KepegawaianMenusState extends State<KepegawaianMenus> {
  int selectedMenuItemIndex =
      -1; // Index yang dipilih, -1 artinya tidak ada yang dipilih

  List<Map<String, dynamic>> menuItems = [
    {'icon': 'assets/icons/icon_1.svg', 'text': 'SIP-LK'},
    {'icon': 'assets/icons/icon_2.svg', 'text': 'BERKAS'},
    {'icon': 'assets/icons/icon_3.svg', 'text': 'SI HRD'},
    {'icon': 'assets/icons/icon_4.svg', 'text': 'APPLE'},
    {'icon': 'assets/icons/icon_5.svg', 'text': 'SARPRAS'},
    {'icon': 'assets/icons/icon_6.svg', 'text': 'MANAJEMEN'},
    {'icon': 'assets/icons/icon_7.svg', 'text': 'PAPERLESS'},
  ];

  final double boxSize = 70;
  final double selectedBorderWidth = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 15,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Ubah status isSelected saat item di-tap
              setState(() {
                if (selectedMenuItemIndex == index) {
                  // Jika item yang sama di-tap lagi, batalkan seleksi
                  selectedMenuItemIndex = -1;
                } else {
                  // Jika item yang berbeda di-tap, perbarui seleksi
                  selectedMenuItemIndex = index;
                }
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: selectedMenuItemIndex == index
                          ? Colors.green
                          : const Color.fromARGB(255, 159, 159, 159),
                      width: selectedMenuItemIndex == index
                          ? selectedBorderWidth
                          : 1.0,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      menuItems[index]['icon'],
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  menuItems[index]['text'],
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class IdentityCard extends StatelessWidget {
  const IdentityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(255, 43, 48, 115),
            Color.fromARGB(255, 88, 180, 230),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome, Joni",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    Icon(
                      Icons.badge_outlined,
                      size: 20,
                      color: Colors.white38,
                    ),
                    Text(
                      "Uniid",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        wordSpacing: 0,
                        color: Colors.white38,
                      ),
                    )
                  ],
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: 20,
                      color: Colors.white38,
                    ),
                    Text(
                      "2011102441054@umkt.ac.id",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        wordSpacing: 0,
                        color: Colors.white38,
                      ),
                    )
                  ],
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    Icon(
                      Icons.account_balance_rounded,
                      size: 20,
                      color: Colors.white38,
                    ),
                    Text(
                      "Fakultas Sains dan Teknologi",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        wordSpacing: 0,
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}

class GridKepegawaian extends StatelessWidget {
  const GridKepegawaian({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kepegawaian",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
