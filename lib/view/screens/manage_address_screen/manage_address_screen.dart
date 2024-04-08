import 'package:flutter/material.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class ManageAddressScreen extends StatefulWidget {
  const ManageAddressScreen({super.key});

  @override
  State<ManageAddressScreen> createState() => _ManageAddressScreenState();
}

class _ManageAddressScreenState extends State<ManageAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Addres(s)"
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Address"
                  ),
                  CustomText(
                    text: "House/Flat Number"
                  ),
                  CustomText(
                    text: "Landmark(optional)"
                  ),
                ],
              )
            );
          }, separatorBuilder: (BuildContext context, int index) { 
            return Divider(
              thickness: 1,
              color: Colors.black12,
            );
          },
        )
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(15),
        child: CustomButton(
          name: "Add Address", 
          onTap: (){

          }
        )
      ),
    );
  }
}