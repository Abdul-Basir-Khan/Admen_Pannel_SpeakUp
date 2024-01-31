import 'package:flutter/material.dart';

import '../../../model/data_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  final List<DataModel> dataList=[
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Inactive'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Inactive'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Inactive'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Inactive'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
    DataModel(name: 'John Doe',companyName: 'Albert Limited',phoneNumber: 923466657667,email: 'abc@gmail.com',country: 'USA',status: 'Active'),
  ];



  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.83,
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.primaryGray.withOpacity(0.50),
            border: const Border.symmetric(
              horizontal:
              BorderSide(color: AppColors.primaryGray),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(
                      color: AppColors.primaryGray
                          .withOpacity(0.60)),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.primaryWhite,
                      suffixIcon: const Icon(
                        Icons.search,
                        color: AppColors.primaryGray,
                      ),
                      hintText: 'Search',
                      hintStyle: AppTextStyles.mediumStyle
                          .copyWith(
                          fontSize: 18,
                          color: AppColors.primaryBlack),
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: AppColors.primaryColor),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: AppColors.primaryColor),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: AppColors.primaryRed),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: AppColors.primaryColor),
                      )),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.15,
              ),
              const Icon(
                Icons.notifications,
                color: AppColors.primaryGray,
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.mail_outline_rounded,
                color: AppColors.primaryGray,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Rehman',
                style: AppTextStyles.regularStyle,
              ),
              const SizedBox(
                width: 7,
              ),
              const CircleAvatar(
                radius: 15,
                backgroundImage:
                AssetImage('assets/image/auth/man.jpg'),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.people,
                            color: AppColors.primaryColor,
                            size: 45,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Customer',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color:
                                    AppColors.primaryGray,
                                    fontSize: 10),
                              ),
                              Text(
                                '5455',
                                style: AppTextStyles.semiBoldStyle
                                    .copyWith(
                                  color: AppColors.primaryBlack,
                                ),
                              ),
                              Text(
                                '15 % This Months',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color: AppColors
                                        .primaryColor,
                                    fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person,
                            color: AppColors.primaryColor,
                            size: 45,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Member',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color:
                                    AppColors.primaryGray,
                                    fontSize: 10),
                              ),
                              Text(
                                '1989',
                                style: AppTextStyles.semiBoldStyle
                                    .copyWith(
                                  color: AppColors.primaryBlack,
                                ),
                              ),
                              Text(
                                '1 % This Months',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color: AppColors
                                        .primaryColor,
                                    fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.screenshot_monitor_outlined,
                            color: AppColors.primaryColor,
                            size: 45,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Active Now',
                                style: AppTextStyles.regularStyle
                                    .copyWith(
                                    color:
                                    AppColors.primaryGray,
                                    fontSize: 10),
                              ),
                              Text(
                                '150',
                                style: AppTextStyles.semiBoldStyle
                                    .copyWith(
                                  color: AppColors.primaryBlack,
                                ),
                              ),
                              const Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/image/auth/man.jpg"),
                                  ),
                                  Positioned(
                                    left: 10,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundImage: AssetImage(
                                              "assets/image/auth/man.jpg"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundImage: AssetImage(
                                              "assets/image/auth/man.jpg"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundImage: AssetImage(
                                              "assets/image/auth/man.jpg"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'All Customer',
                        style: AppTextStyles.boldStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width *
                            0.40,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              color: AppColors.primaryGray
                                  .withOpacity(0.60)),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.primaryWhite,
                              suffixIcon: const Icon(
                                Icons.search,
                                color: AppColors.primaryGray,
                              ),
                              hintText: 'Search',
                              hintStyle: AppTextStyles.mediumStyle
                                  .copyWith(
                                  fontSize: 18,
                                  color:
                                  AppColors.primaryBlack),
                              contentPadding:
                              const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color:
                                    AppColors.primaryColor),
                              ),
                              focusedErrorBorder:
                              OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color:
                                    AppColors.primaryColor),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: AppColors.primaryRed),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color:
                                    AppColors.primaryColor),
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sort By:',
                        style: AppTextStyles.regularStyle
                            .copyWith(
                            color: AppColors.primaryGray),
                      ),
                      Text(
                        'Newest',
                        style: AppTextStyles.regularStyle,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.primaryBlack,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                     DataTable(
                   border: const TableBorder(
                     verticalInside: BorderSide.none,
                     horizontalInside: BorderSide.none,
                   ),
                   columns: [
                     DataColumn(
                         label: Text(
                           'Customer Name',
                           style: AppTextStyles.mediumStyle.copyWith(
                               color: AppColors.primaryGray),
                         )),
                     DataColumn(
                         label: Text(
                           'Company',
                           style: AppTextStyles.mediumStyle.copyWith(
                               color: AppColors.primaryGray),
                         )),
                     DataColumn(
                         label: Text(
                           'Phone No',
                           style: AppTextStyles.mediumStyle.copyWith(
                               color: AppColors.primaryGray),
                         )),
                     DataColumn(
                         label: Text(
                           'Email',
                           style: AppTextStyles.mediumStyle.copyWith(
                               color: AppColors.primaryGray),
                         )),
                     DataColumn(
                         label: Text(
                           'Country',
                           style: AppTextStyles.mediumStyle.copyWith(
                               color: AppColors.primaryGray),
                         )),
                     DataColumn(
                         label: Text(
                           'Status',
                           style: AppTextStyles.mediumStyle.copyWith(
                               color: AppColors.primaryGray),
                         )),
                   ],
                   rows:List.generate(dataList.length, (index) =>   DataRow(cells: [
                     DataCell(Text(

                       dataList[index].name.toString(),

                       style: AppTextStyles.regularStyle
                           .copyWith(
                           color: AppColors.primaryBlack
                               .withOpacity(0.70)),
                     )),

                     DataCell(Text( dataList[index].companyName.toString(),
                         style: AppTextStyles.regularStyle
                             .copyWith(
                             color: AppColors.primaryBlack
                                 .withOpacity(0.70)))),
                     DataCell(Text( dataList[index].phoneNumber.toString(),
                         style: AppTextStyles.regularStyle
                             .copyWith(
                             color: AppColors.primaryBlack
                                 .withOpacity(0.70)))),
                     DataCell(Text( dataList[index].email.toString(),
                         style: AppTextStyles.regularStyle
                             .copyWith(
                             color: AppColors.primaryBlack
                                 .withOpacity(0.70)))),
                     DataCell(Text( dataList[index].country.toString(),
                         style: AppTextStyles.regularStyle
                             .copyWith(
                             color: AppColors.primaryBlack
                                 .withOpacity(0.70)))),
                     DataCell(Container(
                         width:
                         MediaQuery.sizeOf(context).width *
                             0.10,
                         height: 35,
                         padding: const EdgeInsets.symmetric(
                           horizontal: 10,),
                         decoration: BoxDecoration(
                           borderRadius:
                           BorderRadius.circular(5),
                           color:  dataList[index].status=='Active'?AppColors.primaryColor:AppColors.primaryRed,
                         ),
                         child: Center(
                             child: Text( dataList[index].status.toString(),
                                 style: AppTextStyles
                                     .regularStyle
                                     .copyWith(
                                     color: AppColors
                                         .primaryWhite))))),
                   ])),
                 ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}



