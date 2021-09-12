import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/Category_Title.dart';
import 'package:fooddeliveryapp/components/Food_Card.dart';
import 'package:fooddeliveryapp/contants.dart';
import 'package:fooddeliveryapp/screens/Details_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  'Simple way fo find\nTasty food',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryTitle(
                      active: true,
                      title: 'All',
                    ),
                    CategoryTitle(
                      active: false,
                      title: 'Italian',
                    ),
                    CategoryTitle(
                      active: false,
                      title: 'Asian',
                    ),
                    CategoryTitle(
                      active: false,
                      title: 'Chinese',
                    ),
                    CategoryTitle(
                      active: false,
                      title: 'Burgers',
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 4,
                        color: Colors.black.withAlpha(99),
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      border: InputBorder.none,
                      hintText: 'Search here...',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      title: 'Vegan salad bowl',
                      price: 20,
                      image: 'assets/images/image_1.png',
                      ingredient: 'With red tomato',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      calories: '420Kcal',
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()));
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FoodCard(
                      title: 'Vegan salad bowl',
                      price: 20,
                      image: 'assets/images/image_2.png',
                      ingredient: 'With red tomato',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      calories: '420Kcal',
                      press: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor.withOpacity(.25),
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(.25),
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
