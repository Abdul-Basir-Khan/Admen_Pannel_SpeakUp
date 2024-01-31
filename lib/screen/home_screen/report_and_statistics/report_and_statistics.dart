import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../model/report_and_statistic_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import 'package:intl/intl.dart';
class ReportAndStatisticsTab extends StatefulWidget {
  const ReportAndStatisticsTab({super.key});

  @override
  State<ReportAndStatisticsTab> createState() => _ReportAndStatisticsTabState();
}

class _ReportAndStatisticsTabState extends State<ReportAndStatisticsTab> {

  final List<ReportAndStatsModel> dataList=[
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Grow',report: 'Unused Account'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Grow',report: 'Unused Account'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Premium',report: 'Revenue Generated'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Grow',report: 'Subscribed User'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Standard',report: 'Unused Account'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Grow',report: 'Unused Account'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Premium',report: 'Revenue Generated'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Standard',report: 'Unused Account'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Premium',report: 'Subscribed User'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Standard',report: 'Unused Account'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Grow',report: 'Revenue Generated'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Premium',report: 'Subscribed User'),
    ReportAndStatsModel(tutorName: 'Jasmine',userName: 'Abdullah',subscription: 'Standard',report: 'Unused Account'),
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
                'Reports & Statistics',
                style: AppTextStyles.boldStyle
                    .copyWith(
                    color:
                    AppColors.hintColor,
                    fontSize: 24),
              ),
            const Spacer(),
              SizedBox(
                width: MediaQuery.sizeOf(context).width*0.30,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:AppColors.primaryWhite,

                    prefixIcon:   const Icon(Icons.search,color: AppColors.hintColor,),
                    hintText:'Search',
                    hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 10),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              const Image(
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/user/excel-svgrepo-com 1.png")),
              const SizedBox(width: 10,),
              Text(
                'Export to Excel',
                style: AppTextStyles.semiBoldStyle
                    .copyWith(
                    color:
                    AppColors.greenColor,
                    fontSize: 14),
              ),
            ],
            ),
            const SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
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
                                startDate != null && endDate != null
                                    ? '${DateFormat('dd-MMM-yyyy').format(startDate!)} - ${DateFormat('dd-MMM-yyyy').format(endDate!)}'
                                    : 'Select Date Range',
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(width: 10,),
                              const Icon(Icons.arrow_drop_down,color: Colors.grey,)
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 30,),
                      Text(
                        'User Reports',
                        style: AppTextStyles.boldStyle
                            .copyWith(
                            color:
                            AppColors.hintColor,
                            fontSize: 16),
                      ),

                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:AppColors.primaryWhite,

                          prefixIcon:   const Icon(Icons.search,color: AppColors.hintColor,),
                          hintText:'Search for reports',
                          hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 10),
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ListTile(
                        leading: const CircleAvatar(backgroundImage: AssetImage("assets/image/user/image.png"),),
                        title:     Text(
                          'Eddie Lobanovskiy',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 12),
                        ),
                        subtitle:     Text(
                          'laboanovskiy@gmail.com',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 10),
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(backgroundImage: AssetImage("assets/image/user/img& bg.png"),),
                        title:     Text(
                          'Eddie Lobanovskiy',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 12),
                        ),
                        subtitle:     Text(
                          'laboanovskiy@gmail.com',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 10),
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(backgroundImage: AssetImage("assets/image/user/img & bg (1).png"),),
                        title:     Text(
                          'Eddie Lobanovskiy',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 12),
                        ),
                        subtitle:     Text(
                          'laboanovskiy@gmail.com',
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color:
                              AppColors.hintColor,
                              fontSize: 10),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Statistics',
                            style: AppTextStyles.boldStyle
                                .copyWith(
                                color:
                                AppColors.hintColor,
                                fontSize: 16),
                          ),
                          const Spacer(),
                          const Icon(Icons.more_vert,color: AppColors.blackLight,)
                        ],
                      ),
                      const SizedBox(height: 20,),


                      SfCartesianChart(
                        // Initialize category axis
                          primaryXAxis: const CategoryAxis(),

                          series: <CartesianSeries>[
                            ColumnSeries<SalesDataStats, String>(
                              width: 0.1,
                              borderRadius: BorderRadius.circular(10),
                              // Bind data source
                                dataSource: <SalesDataStats>[
                                  SalesDataStats('Jan', 28,AppColors.primaryColor),
                                  SalesDataStats('Feb', 12,AppColors.primaryColor),
                                  SalesDataStats('Mar', 22,AppColors.primaryColor),
                                  SalesDataStats('Apl', 30,AppColors.primaryColor),
                                  SalesDataStats('May', 25,AppColors.primaryColor),
                                ],
                                xValueMapper: (SalesDataStats sales, _) => sales.year,
                                yValueMapper: (SalesDataStats sales, _) => sales.sales,
                             pointColorMapper: (SalesDataStats sales, _)=> sales.color,
                            )
                          ]
                      )





                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.58,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      DataTable(
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
                                  'User',
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
                                  'Subscription',
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
                                  'Report',
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
                              '',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor,fontSize: 12),
                            ),
                          ),

                          DataColumn(
                            label: Text(
                              '',
                              style: AppTextStyles.regularStyle.copyWith(
                                  color: AppColors.hintColor,fontSize: 12),
                            ),
                          ),

                        ],
                        rows:
                        List.generate(

                            dataList.length, (index) =>   DataRow(cells: [


                          DataCell(
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return     Checkbox(
                                  activeColor: AppColors.primaryColor,
                                  value: timeDilation != 1.0,
                                  onChanged: (value) {
                                    setState(() {
                                      timeDilation = value! ?2.0 : 1.0;
                                    }
                                    );
                                  },
                                ); },),

                                Text(
                                  dataList[index].tutorName.toString(),

                                  style: AppTextStyles.regularStyle
                                      .copyWith(
                                      color: AppColors.primaryBlack
                                          .withOpacity(0.70)),
                                )
                              ],
                            ),
                          ),
                          DataCell(Text( dataList[index].userName.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12

                              )
                          )),
                          DataCell(Text( dataList[index].subscription.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.hintColor,
                                  fontSize: 12
                              )

                          )),
                          DataCell(Text( dataList[index].report.toString(),
                              style: AppTextStyles.regularStyle
                                  .copyWith(
                                  color: AppColors.primaryColor,
                                  fontSize: 12
                              )

                          )),
                          const DataCell(

                        Image(image: AssetImage("assets/image/user/Group.png"),)


                          ),
                          DataCell(

                           SvgPicture.asset('assets/image/user/Delete.svg')
                          ),

                        ])),
                      ),

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

class SalesDataStats{
  SalesDataStats(this.year, this.sales,this.color);
  final String year;
  final double sales;
  final Color color;
}


