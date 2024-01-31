import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../model/report_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class EarningTab extends StatefulWidget {
  const EarningTab({super.key});

  @override
  State<EarningTab> createState() => _EarningTabState();
}

class _EarningTabState extends State<EarningTab> {
int _currentIndex=0;
final List packageList=[
  "Package 1",
  "Package 2",
  "Package 3",
];
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.start,children: [
              Text(
                'Earning',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 24),
              ),
              const SizedBox(width: 15,),
              Text(
                'USD',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 12),
              ),
              const SizedBox(width: 5,),
              const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
            ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.attach_money_outlined, size: 40,
                      color:AppColors.primaryColor,),

                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$200,00',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 22),
                        ),
                        Text(
                          'Total Revenue',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                            fontSize: 14,
                            color: AppColors.primaryBlack,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.attach_money_outlined, size: 40,
                      color:AppColors.primaryColor,),

                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$76,000',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 22),
                        ),
                        Text(
                          'Owner Earning',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                            fontSize: 14,
                            color: AppColors.primaryBlack,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.attach_money_outlined, size: 40,
                      color:AppColors.primaryColor,),

                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$1200,00',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 22),
                        ),
                        Text(
                          'Referrals Earnings',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                            fontSize: 14,
                            color: AppColors.primaryBlack,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Revenue',
                  style: AppTextStyles.boldStyle
                      .copyWith(
                      color:
                      AppColors.hintColor,
                      fontSize: 20),
                ),
                const Spacer(),
                Text(
                  'Monthly',
                  style: AppTextStyles.semiBoldStyle
                      .copyWith(
                      color: AppColors.primaryColor,
                      fontSize: 14),
                ),
                const SizedBox(width: 40,),
                const Icon(Icons.keyboard_arrow_down_outlined,color: AppColors.primaryColor,size: 40,)
              ],
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur',
              style: AppTextStyles.regularStyle
                  .copyWith(
                  color: const Color(0xff969BA0),
                  fontSize: 12),
            ),
            const SizedBox(
              height: 15,
            ),
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    const Image(image: AssetImage("assets/image/home/ic_stat.png"),),
    const SizedBox(width: 20,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start
      ,mainAxisAlignment:
      MainAxisAlignment.start,
      children: [
        Text(
          'Income',
          style: AppTextStyles.regularStyle
              .copyWith(
            fontSize: 12,
            color: AppColors.hintColor,
          ),
        ),
        Text(
          '\$1200,00',
          style: AppTextStyles.boldStyle
              .copyWith(
              color:
              AppColors.hintColor,
              fontSize: 22),
        ),

    ],),
    const Spacer(),
    ...List.generate(3, (index) => GestureDetector(
      onTap: (){
        setState(() {
          _currentIndex=index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primaryWhite,border: Border.all(color:_currentIndex==index? AppColors.primaryColor:Colors.transparent)
        ),
        child: Text(packageList[index].toString(),style: AppTextStyles.mediumStyle.copyWith(color:_currentIndex==index?AppColors.primaryColor: const Color(0xff353535)),),
      ),
    ),
    ),

  ],
),
            const SizedBox(
              height: 15,
            ),

            SfCartesianChart(
                primaryXAxis: const CategoryAxis(
                  isVisible: true,
                  minimum: 0,
                ),
                primaryYAxis: const CategoryAxis(
                  isVisible: true,
                  minimum: 0,
                ),
                series: <SplineSeries<SalesData, String>>[
                  SplineSeries<SalesData, String>(
                    color: AppColors.primaryColor,
                    width: 4,
                    splineType: SplineType.monotonic,
                    dataSource:  <SalesData>[
                      SalesData('Jan', 600),
                      SalesData('Feb', 700),
                      SalesData('Mar', 400),
                      SalesData('Apr', 450),
                      SalesData('May', 600),
                      SalesData('Jun', 700),
                      SalesData('Jun', 650),
                      SalesData('Aug', 300),
                      SalesData('Sept', 350),
                      SalesData('Oct', 550),
                      SalesData('Nov', 800),
                    ],
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,

                  )
                ]
            ),


          ],
        ),
      );
  }
}



