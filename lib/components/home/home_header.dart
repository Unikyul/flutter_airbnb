import 'package:airbnb/components/home/home_header_appbar.dart';
import 'package:airbnb/components/home/home_header_form.dart';
import 'package:airbnb/size.dart';
import 'package:flutter/cupertino.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // Container 안에 Column이 들어가야 합니다.
          children: [
            HomeHeaderAppBar(), // AppBar는 Expanded가 필요하지 않을 수 있습니다.
            Expanded(
              // Form이 화면의 나머지 부분을 차지하도록 설정
              child: HomeHeaderForm(),
            ),
          ],
        ),
      ),
    );
  }
}
