import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms/cubit/page_cubit.dart';
import 'package:lms/shared/theme.dart';

class CustomButtomNavigation extends StatelessWidget {
  final int index;
  final String title;
  final String imageUrl;

  const CustomButtomNavigation({
    Key? key,
    required this.index,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: context.read<PageCubit>().state == index
              ? kPrimaryColor
              : kWhiteColor,
        ),
        child: InkWell(
          onTap: () {
            context.read<PageCubit>().setPage(index);
          },
          child: Ink(
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kWhiteColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Image.asset(
                  imageUrl,
                  width: 24,
                  height: 24,
                  color: context.read<PageCubit>().state == index
                      ? kWhiteColor
                      : kGreyColor,
                ),
                Text(
                  title,
                  style: context.read<PageCubit>().state == index
                      ? whiteTextStyle
                      : greyTextStyle,
                ),
                // Container(
                //   width: 5,
                //   height: 5,
                //   decoration: BoxDecoration(
                //     color: context.read<PageCubit>().state == index
                //         ? kPrimaryColor
                //         : kTransparentColor,
                //     borderRadius: BorderRadius.circular(18),
                //   ),
                // ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
