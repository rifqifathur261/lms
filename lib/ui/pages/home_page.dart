import 'package:flutter/material.dart';
import 'package:lms/shared/theme.dart';
import 'package:lms/ui/widgets/custom_select_box.dart';
import 'package:lms/ui/widgets/custom_text_form_field.dart';
import 'package:lms/ui/widgets/custom_text_form_field_filled.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget postBox() {
      return Container(
          margin: EdgeInsets.only(top: 30, left: 30, right: 30),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
              boxShadow: [
                BoxShadow(
                  color: kGreyColor.withOpacity(0.25),
                  blurRadius: 9,
                  offset: Offset(0, 8),
                )
              ]),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: CustomSelectBox(
                        title: 'none',
                        hintText: 'Pilih mata kuliah',
                        items: [
                          'Interaksi Manusia Komputer',
                          'Sistem Jaringan 1',
                          'Data Science'
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: CustomSelectBox(
                        title: 'none',
                        hintText: 'Sesi',
                        items: [
                          '1',
                          '2',
                          '3',
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: CustomTextFormField(
                        title: 'none',
                        hintText: 'Kirim Diskusi',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 24,
                      height: 48,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(
                          defaultRadius,
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                          'assets/icon_send.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ));
    }

    Widget postCard(double margin) {
      Widget header() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_profile_dosen.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Amanda, S.S, M.Hum',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Pemrograman Web',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      '6 menit yang lalu',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      Widget content() {
        return Container(
          margin: EdgeInsets.only(
            left: 0,
            right: 0,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Column(
            children: [
              Text(
                'Selamat siang para calon Sarjana Informatika, Hari ini kita akan mempelajari Bahasa pemrograman Javascript Dasar. Materi Dapat Kalian unduh dibawah',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              Container(
                width: double.infinity,
                height: 76,
                margin: EdgeInsets.only(top: defaultMargin),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(
                    defaultRadius,
                  ),
                ),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 14,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Materi Sesi 2',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Mengenal Syntax C++',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: medium,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 76,
                        height: 76,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(
                            defaultRadius,
                          ),
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/icon_modul.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget comment() {
        return Center(
          child: Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffF0EEF5).withOpacity(1),
                  Color(0xffDEEDF9).withOpacity(1),
                ],
              ),
            ),
            child: Column(
              children: [
                //ACTION
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_love.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '12',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_comment.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '10',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),

                // COMMENT ITEM
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 14,
                    right: 14,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image_profile_dosen.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Amanda, S.S, M.Hum',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '1 Menit yang lalu',
                            style: blackTextStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4, bottom: 6),
                        child: Text(
                          'Dipahami baik baik materinya',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, bottom: 6),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_arrow_down.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Lihat 9 komentar lainnya',
                        style: blackTextStyle.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),

                // COMMENT INPUT
                Container(
                  margin: EdgeInsets.only(
                    right: 14,
                    left: 14,
                    bottom: 16,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //INPUT FIELD
                      Expanded(
                        child: Container(
                          height: 54,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image_profile_dosen.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Expanded(
                                child: CustomTextFormFieldFilled(
                                  title: 'none',
                                  hintText: 'Tulis komentar',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),

                      //BUTTON SEND
                      Container(
                        width: 48,
                        height: 48,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/icon_send.png',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }

      return Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
          boxShadow: [
            BoxShadow(
              color: kGreyColor.withOpacity(0.25),
              blurRadius: 9,
              offset: Offset(0, 8),
            )
          ],
        ),
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: margin,
        ),
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            content(),
            comment(),
          ],
        ),
      );
    }

    return Container(
      child: ListView(
        children: [
          postBox(),
          postCard(0),
          postCard(90),
        ],
      ),
    );
  }
}
