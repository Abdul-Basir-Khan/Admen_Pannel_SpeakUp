import 'package:flutter/material.dart';

import '../../../model/data_model.dart';
import '../../../model/payment_model.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final List<PaymentModel> dataList=[
    PaymentModel(dollars: '\$232',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$342',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$432',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'On Delivery',),
    PaymentModel(dollars: '\$442',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$232',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'On Payment',),
    PaymentModel(dollars: '\$452',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$132',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$532',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'On Delivery',),
    PaymentModel(dollars: '\$652',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$342',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'On Payment',),
    PaymentModel(dollars: '\$732',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
    PaymentModel(dollars: '\$262',date: '12/12/24',customerName: 'ABCDEF',product: 'Milk,Biscuit',supplier: 'EUGH',status: 'Arrived',),
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
          child:

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Subscription Plan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.primaryBlack),),
                  Spacer(),
                  const Text("Rahman Khan",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: AppColors.primaryBlack),),

                ],
              ),
              SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 45,
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
                            hintText: 'Search by any parameter',
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
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                  ),
                  const Icon(
                    Icons.monetization_on_outlined,
                    color: AppColors.primaryGray,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Dolar Range",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.primaryBlack),),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.primaryGray,
                  ),
                  const SizedBox(
                    width: 30,
                  ),

                  const Icon(
                    Icons.people,
                    color: AppColors.primaryGray,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Supplier",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.primaryBlack),),

                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(
                    Icons.label_outline_rounded,
                    color: AppColors.primaryGray,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Label",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.primaryBlack),),

                ],
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 3),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Text(
                          'All',
                          style: AppTextStyles.boldStyle.copyWith(color: AppColors.primaryWhite,fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(
                        'New Order',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryGray),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '23',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryColor),
                      ),
                      const SizedBox(
                        width: 60,
                      ),

                      Text(
                        'On Payment',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryGray),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '10',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryColor),
                      ),

                      const SizedBox(
                        width: 60,
                      ),

                      Text(
                        'On Deliver',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryGray),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '5',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryColor),
                      ),

                      const SizedBox(
                        width: 60,
                      ),

                      Text(
                        'Arrived',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryGray),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '5',
                        style: AppTextStyles.mediumStyle
                            .copyWith(
                            color: AppColors.primaryColor),
                      ),


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
                            'Dollars',
                            style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.primaryGray),
                          )),
                      DataColumn(
                          label: Text(
                            'Date',
                            style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.primaryGray),
                          )),
                      DataColumn(
                          label: Text(
                            'Customer Name',
                            style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.primaryGray),
                          )),
                      DataColumn(
                          label: Text(
                            'Products',
                            style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.primaryGray),
                          )),
                      DataColumn(
                          label: Text(
                            'Supplier',
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

                        dataList[index].dollars.toString(),

                        style: AppTextStyles.regularStyle
                            .copyWith(
                            color: AppColors.primaryBlack
                                .withOpacity(0.70)),
                      )),

                      DataCell(Text( dataList[index].date.toString(),
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color: AppColors.primaryBlack
                                  .withOpacity(0.70)))),
                      DataCell(Text( dataList[index].customerName.toString(),
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color: AppColors.primaryBlack
                                  .withOpacity(0.70)))),
                      DataCell(Text( dataList[index].product.toString(),
                          style: AppTextStyles.regularStyle
                              .copyWith(
                              color: AppColors.primaryBlack
                                  .withOpacity(0.70)))),
                      DataCell(Text( dataList[index].supplier.toString(),
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
                            color:  dataList[index].status=='Arrived'?AppColors.primaryColor:dataList[index].status=='On Delivery'?AppColors.lightPink:AppColors.primaryRed,
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



