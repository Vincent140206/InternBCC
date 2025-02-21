import 'package:flutter/material.dart';
import 'detailscreen.dart';
import '../components/productlist.dart';
import 'homescreen.dart';

class DetailScreen extends StatefulWidget {
  final ProductList product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
        Size(
            double.infinity, 60
        ),
        child: Container(
          width: 412,
          color: Color(0XFF25475F),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 80,),
                          Text(
                            'Detail Barang',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 31, left: 37, right: 37),
        child: Column(
          children: [
            SizedBox(
                height: 366,
                width: 332,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    widget.product.imagePath
                  ),
                )
            ),
            SizedBox(height: 31,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.name,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          widget.product.price,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 16,),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                              'Sed auctor est nec metus vulputate, ac vestibulum purus '
                              'suscipit. Nullam pretium ultrices neque, non ultricies '
                              'nisi venenatis vitae.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFF787878)
                          ),
                        ),
                        Text(
                            'Baca lebih lanjut',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0XFF25475F)
                          )
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/Ellipse 5.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(width: 12,),
                            Text(
                              'BASIC VEGETABLE',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(width: 59,),
                            Image.asset(
                              'assets/images/Bintang.png',
                              width: 21,
                              height: 22,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              widget.product.star,
                              style: TextStyle(
                                  fontSize: 16,
                                color: Color(0XFFFCAE51),
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}