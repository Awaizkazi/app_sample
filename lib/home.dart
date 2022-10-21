import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        containerColor: Colors.white,
                        icon: Icons.health_and_safety,
                        text: 'Health Care',
                        containerHeight: 90.0,
                        containerWidth: 120.0),
                    firstRowContainer(
                        containerColor: const Color(0xff120E97),
                        icon: Icons.personal_injury,
                        text: 'Personal Care',
                        containerHeight: 90.0,
                        containerWidth: 120.0,
                        iconColor: Colors.white,
                        textColor: Colors.white),
                    firstRowContainer(
                        containerColor: Colors.white,
                        icon: Icons.food_bank,
                        text: 'Food care',
                        containerHeight: 90.0,
                        containerWidth: 120.0),
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
                    secondRowContainer(
                        text: 'Skin Cleaning', colorContainer: Colors.white),
                    const SizedBox(
                      width: 10,
                    ),
                    secondRowContainer(
                        text: 'Oral Care',
                        colorContainer: const Color(0xff0E0C9C),
                        textColors: Colors.white),
                    const SizedBox(
                      width: 10,
                    ),
                    secondRowContainer(
                        text: 'Skin Care', colorContainer: Colors.white),
                    const SizedBox(
                      width: 10,
                    ),
                    secondRowContainer(
                        text: 'Skin Cleaning', colorContainer: Colors.white),
                    const SizedBox(
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
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
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
      textColor}) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
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
    );
  }

  Widget secondRowContainer({text, colorContainer, textColors}) {
    return Container(
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
              color: textColors, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }

  Widget bigContainer({productText, productImage}) {
    return Container(
      width: 160,
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(
            // 'assets/pepsodent.jpg',
            productImage,
            width: 170,
            height: 140,
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
                width: 42,
                height: 42,
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
          Container(
            margin: EdgeInsets.only(
              right: 120,
            ),
            child: Text(
              '1kg',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
