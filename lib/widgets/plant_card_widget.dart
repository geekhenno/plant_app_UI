import 'package:flutter/material.dart';
import 'package:speed_code_plant_app/theme/app_colors.dart';

class PlantCardWidget extends StatelessWidget {
  const PlantCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 300,
          width: 250,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: AppColors.green.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Monstera Deliciosa',
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '25 SAR',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 10,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -40,
          right: 30,
          left: 30,
          child: SizedBox(
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        stops: [
                          1.0,
                          1.0
                        ],
                        colors: [
                          AppColors.gray,
                          AppColors.white,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
                child: Image.asset('asset/images/p_2.png'),
              )),
        ),
        Positioned(
          bottom: -25,
          right: 50,
          left: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              'View Details',
              style: TextStyle(color: AppColors.white, fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
