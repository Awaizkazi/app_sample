import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isColored = false;

  String isSelected1 = 'HeatlhCare';
  List<String> isSelected2 = [
    'SkinCleaning',
    'OralCare',
    'SkinCare',
    'ToothCleaning'
  ];
  int index = 2;
  final items = [
    Icon(Icons.home, size: 30),
    Icon(Icons.category, size: 30),
    Icon(Icons.search, size: 30),
    Icon(Icons.menu, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 228, 244),
        appBar: AppBar(
          // toolbarHeight: 200,
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.transparent,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Categories',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey.shade400,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //  SizedBox(height: 10),
              Container(
                height: 120,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    firstRowContainer(
                        containerColor: isSelected1 == 'HeatlhCare'
                            ? Color(0xff120E97)
                            : Colors.white,
                        icon: Icons.health_and_safety,
                        text: 'Health Care',
                        containerHeight: 90.0,
                        containerWidth: 120.0,
                        onTapped: () {
                          setState(() {
                            isSelected1 = 'HeatlhCare';
                            isColored = !isColored;
                          });
                        }),
                    firstRowContainer(
                        containerColor: isSelected1 == 'PersonalCare'
                            ? Color(0xff120E97)
                            : Colors.white,
                        icon: Icons.personal_injury,
                        text: 'Personal Care',
                        containerHeight: 90.0,
                        containerWidth: 120.0,
                        iconColor: Colors.black,
                        textColor: Colors.black,
                        onTapped: () {
                          setState(() {
                            isSelected1 = 'PersonalCare';
                            isColored = !isColored;
                          });
                        }),
                    firstRowContainer(
                        containerColor: isSelected1 == 'FoodCare'
                            ? Color(0xff120E97)
                            : Colors.white,
                        icon: Icons.food_bank,
                        text: 'Food care',
                        containerHeight: 90.0,
                        containerWidth: 120.0,
                        onTapped: () {
                          setState(() {
                            isSelected1 = 'FoodCare';
                            isColored = !isColored;
                          });
                        }),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    // secondRowContainer2(),
                    secondRowContainer(
                        text: 'Skin Cleaning',
                        colorContainer: isSelected2 == ['SkinCleaning']
                            ? Color(0xff120E97)
                            : Colors.white,
                        onTapped: () {
                          setState(() {
                            isSelected2 = ['SkinCleaning'];
                            isColored = !isColored;
                          });
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    secondRowContainer(
                        text: 'Oral Care',
                        colorContainer: isSelected2 == ['OralCare']
                            ? Color(0xff120E97)
                            : Colors.white,
                        onTapped: () {
                          setState(() {
                            isSelected2 = ['OralCare'];
                            isColored = !isColored;
                          });
                        }),
                    SizedBox(
                      width: 10,
                    ),
                    // secondRowContainer2(),
                    secondRowContainer(
                        text: 'Skin Care',
                        colorContainer: isSelected2 == ['SkinCare']
                            ? Color(0xff120E97)
                            : Colors.white,
                        onTapped: () {
                          setState(() {
                            isSelected2 = ['SkinCare'];
                            isColored = !isColored;
                          });
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    // secondRowContainer2(),
                    secondRowContainer(
                        text: 'Tooth Cleaning',
                        colorContainer: isSelected2 == ['ToothCleaning']
                            ? Color(0xff120E97)
                            : Colors.white,
                        onTapped: () {
                          setState(() {
                            isSelected2 = ['ToothCleaning'];
                            isColored = !isColored;
                          });
                        }),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(13),
                    child: Text(
                      'Toothpaste',
                      style: TextStyle(
                          wordSpacing: 2,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(13),
                    child: Text(
                      'See All (10)',
                      style: TextStyle(
                        wordSpacing: 1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff120E97),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'Pepsodent Cavity\nToothpaste',
                        productImage: 'assets/pepsodent.jpg'),
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'CLoseup Deep\nAction Toothpaste',
                        productImage: 'assets/closeup.png'),
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'Pepsodent Cavity\nToothpaste',
                        productImage: 'assets/pepsodent.jpg'),
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'CLoseup Deep\nAction Toothpaste',
                        productImage: 'assets/closeup.png'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(13),
                    child: Text(
                      'Toothpowder',
                      style: TextStyle(
                          wordSpacing: 2,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(13),
                    child: Text(
                      'See All (3)',
                      style: TextStyle(
                        wordSpacing: 1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff120E97),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'Pepsodent Cavity\nToothpaste',
                        productImage: 'assets/pepsodent.jpg'),
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'CLoseup Deep\nAction Toothpaste',
                        productImage: 'assets/closeup.png'),
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'Pepsodent Cavity\nToothpaste',
                        productImage: 'assets/pepsodent.jpg'),
                    SizedBox(width: 10),
                    bigContainer(
                        productText: 'CLoseup Deep\nAction Toothpaste',
                        productImage: 'assets/closeup.png'),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          color: Colors.white,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color(0xff120E97),
          index: index,
          height: 50,
          animationDuration: Duration(milliseconds: 450),
        ),
      ),
    );
  }

  Widget firstRowContainer(
      {containerColor,
      icon,
      text,
      containerWidth,
      containerHeight,
      iconColor,
      textColor,
      onTapped}) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          // color: isColored ? Color(0xff120E97) : Colors.white,
          color: containerColor,
          border: Border.all(color: Colors.purple, width: 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 50,
              color: iconColor,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget secondRowContainer({text, colorContainer, textColors, onTapped}) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 140,
        height: 35,
        decoration: BoxDecoration(
          color: colorContainer,
          border: Border.all(
            color: const Color(0xff0E0C9C),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColors, fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ),
      ),
    );
  }

  Widget secondRowContainer2({text, colorContainer, textColors, onTapped}) {
    return Expanded(
      child: ListView.builder(
        itemCount: isSelected2.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: onTapped,
            child: Expanded(
              child: Container(
                width: 140,
                height: 35,
                decoration: BoxDecoration(
                  color: colorContainer,
                  border: Border.all(
                    color: const Color(0xff0E0C9C),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        color: textColors,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget bigContainer({productText, productImage}) {
    return Container(
      width: 160,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(
            // 'assets/pepsodent.jpg',
            productImage,
            width: 180,
            height: 100,
          ),
          Text(
            productText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  '\$90',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 10),
                child: Text(
                  '\$75',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              '1kg',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    );
  }
}
