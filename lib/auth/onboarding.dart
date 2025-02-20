import 'package:bcc1/auth/signupscreen.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  OnBoardingState createState() => OnBoardingState();
}

class OnBoardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  int index = 0;
  bool isTransparent = false;


  List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/OnBoarding_1.png",
      "title": "Fresh & Healthy Every Day",
      "description": "Dapatkan sayur segar langsung dari petani ke rumah Anda. "
          "Kualitas terbaik untuk hidup lebih sehat!"
    },
    {
      "image": "assets/images/OnBoarding_2.png",
      "title": "Dukung Petani Lokal",
      "description": "Pesan sayur favorit Anda dalam hitungan detik. Tanpa ribet, "
          "tanpa antri, langsung diantar ke rumah!"
    },
    {
      "image": "assets/images/OnBoarding_3.png",
      "title": "Belanja Mudah, Hemat Waktu",
      "description": "Setiap pembelian Anda membantu petani lokal berkembang. "
          "Makan sehat sambil berbagi kebaikan!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 152),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Logo Basic Shop 1.png',
                width: 30,
                height: 30,
              ),
              Text(
                'Basic Shop',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 36),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (int pageIndex) {
                setState(() {
                  index = pageIndex;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      onboardingData[index]['image']!,
                      height: 299,
                      width: 299,
                    ),
                    SizedBox(height: 59),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 341,
                        decoration: BoxDecoration(
                          color: Color(0XFF25475F),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 56),
                            Text(
                              onboardingData[index]['title']!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 57),
                              child: Text(
                                onboardingData[index]['description']!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 52),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 56),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      if (index > 0) {
                                        pageController.previousPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.easeIn,
                                        );
                                      }
                                    },
                                    child: Opacity(
                                      opacity: index > 0 ? 1 : 0,
                                      child: Text(
                                        'Back',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if (index < onboardingData.length - 1) {
                                        pageController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.easeIn,
                                        );
                                      } else {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(builder: (context) => SignUpScreen()));
                                      }
                                    },
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0XFFFCAE51),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}