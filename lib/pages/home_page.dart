import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:new_project/model/category.dart';
import 'package:new_project/model/product.dart';
import 'package:new_project/pages/product_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;
  Category currentCategory;
  List<Product> filterClothes = [];
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 2, initialIndex: 0);
    currentCategory = categories[0];
    filterClothes = iteamclothe.where((Product product) => product.category == currentCategory.id).toList();
  }

  List<String> banner = [
    "asset/imgs/banner.jpg",
    "asset/imgs/banner2.jpg",
    "asset/imgs/banner3.jpg",
    "asset/imgs/banner4.jpg",
    "asset/imgs/banner5.jpg"
  ];
  List<Category> categories = [
    Category(
      id: 'woman',
      name: 'woman'
    ),
    Category(
      id: "man",
      name: 'man'
    )
  ];
  List<Product> iteamclothe = [
    Product(
        brand: "Chanel",
        imageUrl: "asset/imgs/iteam.jpeg",
        productName: "Chanel",
        category: "woman"),
    Product(
        brand: "Victoria",
        imageUrl: "asset/imgs/iteam2.jpeg",
        productName: "Victoria",
        category: "woman"),
    Product(
        brand: "ZARA",
        imageUrl: "asset/imgs/iteam3.jpeg",
        productName: "ZARA",
        category: "woman"),
    Product(
        brand: "BOSS",
        imageUrl: "asset/imgs/iteam4.jpeg",
        productName: "BOSS",
        category: "woman"),
    Product(
        brand: "H&M",
        imageUrl: "asset/imgs/iteam5.jpeg",
        productName: "H&M",
        category: "woman"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/iteam6.jpeg",
        productName: "H&M",
        category: "woman"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam1.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam2.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam3.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam4.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam5.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam6.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam7.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam8.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam9.jpeg",
        productName: "GUCCI1",
        category: "man"),
    Product(
        brand: "GUCCI",
        imageUrl: "asset/imgs/miteam10.jpeg",
        productName: "GUCCI1",
        category: "man"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.sort),
          )
        ],
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: size.height / 4,
              child: Swiper(
                controller: new SwiperController(),
                autoplay: true,
                itemBuilder: (_, index) {
                  return Container(
                    width: size.width,
                    height: size.height / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(banner[index]))),
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _BuildHeaderDelegate(
              minHeight: 50,
              maxHeight: 50,
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.white),
                child: TabBar(
                  labelColor: Colors.black,
                  onTap: (int index) {
                    filterClothes = [];
                    setState(() {
                      filterClothes = iteamclothe.where((Product product) => product.category == categories[index].id).toList();
                    });
                  },
                  labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent),
                  controller: tabController,
                  tabs: List.generate(categories.length, (index) {
                    return Text('${categories[index].name.toString().toUpperCase()}');
                  }),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  Product product = filterClothes[index];
                  return ItemDetail(product: product, size: size,index: index,);
                },
                childCount: filterClothes.length),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
            ),
          ),
        ],
      ),
    );
  }


}

class ItemDetail extends StatefulWidget {
  const ItemDetail({
    Key key,
    @required this.product,
    @required this.index,
    @required this.size,
  }) : super(key: key);

  final Product product;
  final Size size;
  final int index ;

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail>  with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    print("inside init state");
    animation = CurvedAnimation(
      curve: Interval(
        widget.index < 10 ? widget.index / 10 : 0.0,
        1.0,
        curve: Curves.easeInOut
      ),
      parent: animationController,
    )..addListener(() {
     if(mounted) {
       setState(() {

       });
     }
    });
    animationController.reverse(from: 1.0);
    super.initState();
  }
  @override
  void dispose() {
    print('dispose');
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Transform(
      transform: Matrix4.translationValues(size.width * animation.value, 0.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ProductDetails(
                      img: widget.product.imageUrl,
                    )));
          },
          child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(2, 5))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(widget.product.imageUrl))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(5))),
                    width: widget.size.width / 7,
                    height: 20,
                    child: Center(
                        child: Text(
                          widget.product.brand,
                          style:
                          TextStyle(color: Colors.white, fontFamily: "Comicneue"),
                        )),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class _BuildHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _BuildHeaderDelegate(
      {@required this.minHeight,
      @required this.maxHeight,
      @required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
