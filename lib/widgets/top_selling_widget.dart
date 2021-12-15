import 'package:flutter/material.dart';
import 'package:speed_code_plant_app/theme/app_colors.dart';

class TopSellingWidget extends StatelessWidget {
  const TopSellingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ],
                image: const DecorationImage(
                    image: AssetImage('asset/images/p_1.png')),
                gradient: const LinearGradient(colors: [
                  AppColors.white,
                  AppColors.gray,
                  AppColors.white,
                ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.green.withOpacity(0.8),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: const ListTile(
                dense: true,
                title: Text(
                  'Snake Plant',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white),
                ),
                trailing: Text(
                  '150 SAR',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
