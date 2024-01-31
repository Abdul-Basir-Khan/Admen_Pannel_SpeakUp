import 'package:admin_panel/model/subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../model/pie_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class SubscriptionTab extends StatefulWidget {
  const SubscriptionTab({super.key});

  @override
  State<SubscriptionTab> createState() => _SubscriptionTabState();
}

class _SubscriptionTabState extends State<SubscriptionTab> {
  DateTime? startDate;
  DateTime? endDate;
  final List<SubscriptionModel> dataList=[
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'USA',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'UK',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'CHINA',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'INDIA',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'USA',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'PAKISTAN',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'USA',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'NEPAL',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'USA',subscriptionPlan: 'Basic',user: 'User Name',),
    SubscriptionModel(tutorName: 'Tutor Name',dateOfBuying: 2020-10-1,country: 'BOTAN',subscriptionPlan: 'Basic',user: 'User Name',),
 ];
  final List<EditSubscription> editList=[
    EditSubscription(packageName: 'Basic',time: '(8 hrs/month)',payment: '10 usd'),
    EditSubscription(packageName: 'Standard',time: '(8 hrs/month)',payment: '14 usd'),
    EditSubscription(packageName: 'Premium',time: '(8 hrs/month)',payment: '16 usd'),
    EditSubscription(packageName: 'Custom',time: '',payment: 'On Useer'),
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
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Text(
                'Subscription',
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

            const SizedBox(
              height: 25,
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
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:MediaQuery.sizeOf(context).width*0.24,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                              const Image(image: AssetImage("assets/image/home/icon.png" )),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Discount COUPON',
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                  color:
                                                  AppColors.hintColor,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              '(Individual)',
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                  color:
                                                  AppColors.hintColor,
                                                  fontSize: 8),
                                            ),



                                            Text(
                                              '5 Used',
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                  color:
                                                  AppColors.greenColor,
                                                  fontSize: 11),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'b4as5g',
                                          style: AppTextStyles.boldStyle
                                              .copyWith(
                                              color:
                                              AppColors.hintColor,
                                              fontSize: 24),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/image/home/Vector 3.png"))
                            ],
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width:MediaQuery.sizeOf(context).width*0.24,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Image(image: AssetImage("assets/image/home/icon (1).png" )),
                                    const SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Discount COUPON',
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                  color:
                                                  AppColors.hintColor,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              '(Individual)',
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                  color:
                                                  AppColors.hintColor,
                                                  fontSize: 8),
                                            ),




                                            Text(
                                              '5 Used',
                                              style: AppTextStyles.semiBoldStyle
                                                  .copyWith(
                                                  color:
                                                  AppColors.greenColor,
                                                  fontSize: 11),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'b4as5g',
                                          style: AppTextStyles.boldStyle
                                              .copyWith(
                                              color:
                                              AppColors.hintColor,
                                              fontSize: 24),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/image/home/Vector 4.png"))
                            ],
                            ),
                          ),
                        ],
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
                        columnSpacing: 40,
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
                                  'Country',
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
                          DataCell(Text( dataList[index].country.toString(),
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
                      Text(
                        'Edit Subscription',
                        style: AppTextStyles.boldStyle
                            .copyWith(
                            color:
                            AppColors.hintColor,
                            fontSize: 18),
                      ),
                      const SizedBox(height: 15,),
                      Column(
                        children:List.generate(editList.length    , (index) =>  Column(
                          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                RichText(text: TextSpan(
                                    text:editList[index].packageName.toString(),
                                    style: AppTextStyles.boldStyle.copyWith(color: AppColors.hintColor,fontSize: 12),
                                    children: [
                                      TextSpan(
                                        text: editList[index].time.toString(),
                                        style: AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 10),

                                      )
                                    ]
                                ),
                                ),
                                const Spacer(),
                                Text(editList[index].payment.toString(),style:  AppTextStyles.regularStyle.copyWith(color: AppColors.hintColor,fontSize: 12),
                                )

                              ],
                            ),
                            const SizedBox(height: 10,),
                          ],
                        ),),
                      ),





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


class EditSubscription{
 String?packageName;
 String?time;
 String?payment;
 EditSubscription({this.packageName,this.payment,this.time});
}

