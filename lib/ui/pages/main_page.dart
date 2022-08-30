import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/cubit/page_cubit.dart';
import 'package:lms/shared/theme.dart';
import 'package:lms/ui/pages/home_page.dart';
import 'package:lms/ui/pages/kelas_page.dart';
import 'package:lms/ui/pages/mahasiswa_page.dart';
import 'package:lms/ui/pages/setting_page.dart';
import 'package:lms/ui/widgets/custom_button_navigation.dart';
import 'package:badges/badges.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return KelasPage();
        case 2:
          return MahasiswaPage();
        case 3:
          return SettingPage();

        default:
          return HomePage();
      }
    }

    Widget customButtomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: kWhiteColor,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtomNavigation(
                index: 0,
                title: 'Beranda',
                imageUrl: 'assets/icon_home_primary.png',
              ),
              CustomButtomNavigation(
                index: 1,
                title: 'Kelas',
                imageUrl: 'assets/icon_kelas_grey.png',
              ),
              CustomButtomNavigation(
                index: 2,
                title: 'Mahasiswa',
                imageUrl: 'assets/icon_mhs_grey.png',
              ),
              CustomButtomNavigation(
                index: 3,
                title: 'Setting',
                imageUrl: 'assets/icon_setting_grey.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: kWhiteColor,
            leading: Container(
              padding: EdgeInsets.all(
                10,
              ),
              child: Image(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Badge(
                  shape: BadgeShape.square,
                  badgeColor: kAccentColor,
                  borderRadius: BorderRadius.circular(8),
                  // badgeContent: Text(
                  //   '3',
                  //   style: whiteTextStyle.copyWith(
                  //     fontSize: 12,
                  //   ),
                  // ),
                  elevation: 0,
                  child: Icon(
                    size: 24,
                    color: kPrimaryColor,
                    Icons.notifications_outlined,
                  ),
                ),
              ),
            ],
            title: Center(
              child: Text(
                'Universitas Rifqi Asia',
                style: titleAppBarTextStyle,
              ),
            ),
            elevation: 0,
          ),
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
