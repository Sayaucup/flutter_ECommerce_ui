import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/CategoryItem.dart';
import 'package:e_commerce/Drawer.dart';
import 'package:e_commerce/ProductPage.dart';
import 'package:e_commerce/drawerItem/Contoh.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerAdSlider = [
    'assets/Banner-1.jpg',
    'assets/Banner-2.jpg',
    'assets/Banner-3.jpg',
    'assets/Banner-4.jpg',
    'assets/Banner-5.jpg'
  ];

  List<Product> products = [
    Product('Samsung-A1', 'assets/product-1.jpg', '100',
        'Voluptatem autem id quam nam autem rem sed. Earum necessitatibus praesentium qui voluptas quis id quisquam. Qui tempore sit quia optio quis eos dignissimos. Saepe ipsum ut libero facilis neque cumque earum..'),
    Product('Samsung-A2', 'assets/product-2.jpg', '100',
        'Voluptatem dolor incidunt magni ea quo sit debitis. Voluptatem velit accusantium fuga ratione corporis impedit sed qui reiciendis. Consequatur est sed temporibus similique incidunt blanditiis quibusdam. Voluptas atque inventore officiis quisquam saepe tempora omnis. Autem non ut minima. Veniam quo et velit quo odio ipsam accusantium..'),
    Product('Samsung-A3', 'assets/product-3.jpg', '100',
        'Quisquam sint consectetur. Placeat quo eos nam saepe ut voluptatem illo nam assumenda. Hic quam autem quidem..'),
    Product('Samsung-A4', 'assets/product-4.jpg', '100',
        'Qui veniam repellat fugiat aut. Occaecati occaecati et repellat. Fugiat rem enim. Quibusdam at aut eaque est error iure enim. Est veritatis sit dignissimos officiis totam modi quidem temporibus id..'),
    Product('Samsung-A5', 'assets/product-5.jpg', '100',
        'Consectetur aspernatur quasi odit praesentium id qui iste magni facilis. Dicta dolor unde quisquam magnam odio est ut. Corrupti inventore inventore nihil cum error eum enim molestias..'),
    Product('Samsung-A6', 'assets/product-6.jpg', '100',
        'Non vitae delectus aperiam qui rerum deserunt. Aut dolores alias consequatur possimus est culpa est adipisci. Aperiam officiis aperiam autem. Fuga iste ratione nostrum distinctio iure..'),
    Product('Samsung-A7', 'assets/product-7.jpg', '100',
        'Aut fugit aspernatur sunt sit amet consequatur quis. Ut ut ut commodi totam eveniet nemo blanditiis molestias. Sint unde hic ea. Adipisci itaque qui ut consequatur et..'),
    Product('Samsung-A8', 'assets/product-8.jpg', '100',
        'Nam harum magni et. Quis dolorum voluptatem sit corporis labore vel. Porro et sed esse ipsa sed enim consequatur. Aut inventore recusandae voluptatum velit reprehenderit ducimus ratione..'),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'E-Commerce',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          ),
        ],
      ),
      drawer: Drawerr(),
      drawerEdgeDragWidth: 0,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Contoh()));
                      },
                      child: CategoryItem(
                        icon: EvaIcons.giftOutline,
                        size: 70,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xffffe291),
                      ),
                    ),
                    CategoryItem(
                      icon: EvaIcons.headphonesOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xff91bfff),
                    ),
                    CategoryItem(
                      icon: EvaIcons.hardDriveOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xffff91c1),
                    ),
                    CategoryItem(
                      icon: EvaIcons.printerOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xff5340de),
                    ),
                    CategoryItem(
                      icon: EvaIcons.videoOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xff47e6a9),
                    ),
                    CategoryItem(
                      icon: EvaIcons.umbrellaOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xffff788e),
                    ),
                    CategoryItem(
                      icon: EvaIcons.tvOutline,
                      size: 70,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xffff9378),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //banner ad slider
              CarouselSlider(
                options: CarouselOptions(aspectRatio: 16 / 9, autoPlay: true),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Contoh()));
                            },
                            child: Image(
                              image: AssetImage(i),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              //product
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Product',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.3,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(product.productName),
                            Text(
                              '${product.price}\$',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                          product: product,
                                        )));
                          },
                        ),
                      ),
                    ],
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
