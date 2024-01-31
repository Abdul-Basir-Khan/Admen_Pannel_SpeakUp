import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../model/data_model.dart';
import '../../../model/pie_model.dart';
import '../../../model/report_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  final List<DataModel> dataList=[
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,price:'\$20',subscriptionPlan: 'Basic',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,price:'\$440',subscriptionPlan: 'Premium',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2023-10-1,price:'\$30',subscriptionPlan: 'Standard',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2024-10-1,price:'\$50',subscriptionPlan: 'Premium',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2021-10-1,price:'\$60',subscriptionPlan: 'Basic',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2015-10-1,price:'\$770',subscriptionPlan: 'Standard',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2012-10-1,price:'\$550',subscriptionPlan: 'Basic',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2023-10-1,price:'\$22',subscriptionPlan: 'Premium',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2022-10-1,price:'\$13',subscriptionPlan: 'Standard',user: 'User Name',),
    DataModel(tutorName: 'Tutor Name',dateOfBuying: 2025-10-1,price:'\$45',subscriptionPlan: 'Premium',user: 'User Name',),
  ];


  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Text(
                'Dashboard',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 24),
              ),
              const Spacer(),
              Text(
                'My Account',
                style: AppTextStyles.semiBoldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 14),
              ),
              const SizedBox(width: 10,),
              SvgPicture.asset(
                  color:AppColors.primaryColor,
                  "assets/image/home/user.svg"),
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
                    SvgPicture.asset(
                      height:40,width: 40,
                        color:AppColors.primaryColor,
                        "assets/image/home/user.svg"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '245',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 22),
                        ),
                        Text(
                          'New User',
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
                    SvgPicture.asset(
                        height:40,width: 40,
                        color:AppColors.primaryColor,
                        "assets/image/home/mop 1 (Traced).svg"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '25',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 22),
                        ),
                        Text(
                          'Active User',
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
                    SvgPicture.asset(
                        height:40,width: 40,
                        color:AppColors.primaryColor,
                        "assets/image/home/user.svg"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1445',
                          style: AppTextStyles.boldStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 22),
                        ),
                        Text(
                          'Total User',
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
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      '202',
                      style: AppTextStyles.boldStyle
                          .copyWith(
                          color:
                          AppColors.hintColor,
                          fontSize: 22),
                    ),
                    Text(
                      'Inactive User',
                      style: AppTextStyles.regularStyle
                          .copyWith(
                        fontSize: 14,
                        color: AppColors.primaryBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Reports',
                            style: AppTextStyles.boldStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            'View All',
                            style: AppTextStyles.semiBoldStyle
                                .copyWith(
                                color: AppColors.primaryBlue,
                                fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

          SfCartesianChart(
              primaryXAxis: const CategoryAxis(
                isVisible: true,
                minimum: 0,
              ),
              series: <SplineSeries<SalesData, String>>[
                SplineSeries<SalesData, String>(
                  color: AppColors.primaryColor,
                    dataSource:  <SalesData>[
                      SalesData('6 Jan', 60),
                      SalesData('8 Jan', 30),
                      SalesData('9 Jan', 40),
                      SalesData('11 Jan', 52),
                      SalesData('15 Jan', 20),
                      SalesData('17 Jan', 70),
                      SalesData('20 Jan', 100),
                    ],
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,

                  markerSettings: const MarkerSettings(isVisible: true),
                )
              ]
          ),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Recent Subscriptions',
                            style: AppTextStyles.boldStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            'View All',
                            style: AppTextStyles.semiBoldStyle
                                .copyWith(
                                color: AppColors.primaryBlue,
                                fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                          DataTable(
                            columnSpacing: 45,
                            border: const TableBorder(

                          verticalInside: BorderSide.none,
                          horizontalInside: BorderSide.none
                                                  ),
                                                  columns: [
                          DataColumn(
                              label:
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tutor',
                                    style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,fontSize: 12),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                                ],
                              ),
                          ),
                          DataColumn(
                            label: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Date of Buying',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Price',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.hintColor,fontSize: 12),
                                ),
                                const SizedBox(width: 5,),
                                const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,)
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Subscription Plan',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor,fontSize: 12),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'User',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor,fontSize: 12),
                            ),
                          ),

                                                  ],
                                                  rows:List.generate(dataList.length, (index) =>   DataRow(cells: [
                          DataCell(Text(

                            dataList[index].tutorName.toString(),

                            style: AppTextStyles.regularStyle
                                .copyWith(
                                color: AppColors.primaryBlack
                                    .withOpacity(0.70)),
                          )),

                          DataCell(Text( dataList[index].dateOfBuying.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                fontSize: 12

                              )
                          )
                          ),
                          DataCell(Text( dataList[index].price.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12

                              )

                          )
                          ),
                          DataCell(Text( dataList[index].subscriptionPlan.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12

                              )

                          )),
                          DataCell(Text( dataList[index].user.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12

                              )

                          )),
                                                  ])),
                                                ),

                    ],
                  ),
                ),
                const SizedBox(width: 15,),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.26,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Analytics',
                            style: AppTextStyles.boldStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 18),
                          ),
                          const SizedBox(width: 15,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Container(
                                        height: 500,
                                        width: 500,
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Select Date Range',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            SizedBox(
                                              height: 350,
                                              child: CalendarDatePicker(
                                                firstDate: DateTime(2022),
                                                lastDate: DateTime(2050),
                                                onDateChanged: (DateTime? newDate) {
                                                  setState(() {
                                                    if (startDate == null) {
                                                      startDate = newDate;
                                                    } else if (endDate == null) {
                                                      endDate = newDate;
                                                    } else {
                                                      startDate = newDate;
                                                      endDate = null;
                                                    }
                                                  });
                                                }, initialDate: DateTime.now(),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Done'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              });
                            },
                            child: Container(
                              height: 50,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    startDate != null  &&  endDate != null
                                        ? '${DateFormat('dd-MMM-yyyy').format(startDate!)} - ${DateFormat('dd-MMM-yyyy').format(endDate!)}'
                                        : 'Start Date - End Date',
                                    style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.hintColor,fontSize: 12),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(Icons.arrow_drop_down,color: AppColors.hintColor,),

                                ],
                              ),
                            ),
                          ),


                          const Spacer(),
                          Text(
                            'View All',
                            style: AppTextStyles.semiBoldStyle
                                .copyWith(
                                color: AppColors.primaryBlue,
                                fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      SfCircularChart(
                        legend: const Legend(
                          isVisible: true,
                          position: LegendPosition.bottom, // Position the legend below the chart
                        ),
                        series: <DoughnutSeries<PieData, String>>[
                          DoughnutSeries<PieData, String>(
                            innerRadius: '60%',
                            dataSource: <PieData>[
                              PieData('Total Users', 20,AppColors.primaryBlue),
                              PieData('New Subscribers', 30,AppColors.primaryColor),
                              PieData('New User', 10,AppColors.primaryYellow),
                            ],
                            xValueMapper: (PieData data, _) => data.category,
                            yValueMapper: (PieData data, _) => data.sales,
                            pointColorMapper: (PieData data, _) => data.color,

                          ),
                        ],
                        annotations: <CircularChartAnnotation>[
                          CircularChartAnnotation(
                            widget: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '+20%',
                                    style: AppTextStyles.boldStyle.copyWith(color: AppColors.hintColor,fontSize: 30),
                                  ),
                                  Text(
                                    'New Stats',
                                    style: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 16),

                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Top AI Tutors',
                            style: AppTextStyles.boldStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 18),
                          ),

                          const Spacer(),
                          Text(
                            'View All',
                            style: AppTextStyles.semiBoldStyle
                                .copyWith(
                                color: AppColors.primaryBlue,
                                fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,children: [
                       Container(
                         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 22),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             color: AppColors.blackLight
                         ),
                       ),
                       const SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,children: [
                         Text(
                           'Siri AI Tutor',
                           style: AppTextStyles.regularStyle
                               .copyWith(
                               color:
                               AppColors.hintColor,
                               fontSize: 15),
                         ),
                         const Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Icon(Icons.star,color: AppColors.yellowLight,),
                             Icon(Icons.star,color: AppColors.yellowLight,),
                             Icon(Icons.star,color: AppColors.yellowLight,),
                             Icon(Icons.star,color: AppColors.yellowLight,),
                           ],
                         ),
                       ],
                       )
                     ],),
                      const SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 22),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.blackLight
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text(
                            'Siri AI Tutor',
                            style: AppTextStyles.regularStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 15),
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: AppColors.yellowLight,),
                              Icon(Icons.star,color: AppColors.yellowLight,),
                              Icon(Icons.star,color: AppColors.yellowLight,),
                              Icon(Icons.star,color: AppColors.yellowLight,),
                            ],
                          ),
                        ],
                        )
                      ],),
                      const SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 22),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.blackLight
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text(
                            'Siri AI Tutor',
                            style: AppTextStyles.regularStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 15),
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: AppColors.yellowLight,),
                              Icon(Icons.star,color: AppColors.yellowLight,),
                              Icon(Icons.star,color: AppColors.yellowLight,),
                              Icon(Icons.star,color: AppColors.yellowLight,),
                            ],
                          ),
                        ],
                        )
                      ],),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}



