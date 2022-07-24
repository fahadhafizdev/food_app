import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/status_food_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topNavbar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: lebar * 0.04),
            decoration: BoxDecoration(
              color: cGrey2,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                'assets/icons/icon_arrow_back.png',
                height: 16,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(right: lebar * 0.04),
            decoration: BoxDecoration(
              color: cYellow,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                'assets/icons/icon_love.png',
                height: 20,
              ),
            ),
          ),
        ],
      );
    }

    Widget sizeFood() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: tGrey.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: cGrey2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'S',
                style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: cGrey2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'M',
                style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: cGrey2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'L',
                style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 18),
          Text(
            'Quantity',
            style: tGrey.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: cGrey2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '-',
                    style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '2',
                style: tWhite.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: cYellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '+',
                    style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget detailFood() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Details',
            style: tWhite.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Text(
              'The cheese is melted and just about completely forms a liquid with the tomato sauce at the time of serving. The taste is of bread, cheese and a tomato sauce made with ripes tomatoes. The main ingredients for the Pizza are basil, mozzarella cheese and red tomatoes.',
              style: tGrey.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      );
    }

    Widget btnAdd() {
      return Center(
        child: SizedBox(
          height: 54,
          width: 300,
          child: ElevatedButton(
            onPressed: () {},
            style: btnStyle1,
            child: Text(
              'Add to cart',
              style: tBlack.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Padding(
        padding: EdgeInsets.only(left: lebar * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Margherita Pizza',
              style: tWhite.copyWith(fontWeight: semiBold, fontSize: 40),
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                sizeFood(),
                Container(
                  height: 253,
                  width: 253,
                  margin: EdgeInsets.only(left: lebar * 0.25),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/pizza1.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                StatusFoodWidget(
                  image: 'assets/icons/icon_star.png',
                  text: '4.9',
                ),
                StatusFoodWidget(
                  image: 'assets/icons/icon_fire.png',
                  text: '145 cal',
                ),
                StatusFoodWidget(
                  image: 'assets/icons/icon_time.png',
                  text: '30 min',
                ),
              ],
            ),
            detailFood(),
            SizedBox(
              height: 30,
            ),
            btnAdd(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: cBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: tinggi * 0.09,
            ),
            topNavbar(),
            SizedBox(height: 20),
            content(),
          ],
        ),
      ),
    );
  }
}
