import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zil_delivery_app/features/domain/entity/ui_constants.dart';
import 'package:zil_delivery_app/features/domain/usecases/helpers/responsiveness.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Container(), smallScreen: _buildSmallScreen());
  }

  Widget _buildSmallScreen() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: UIConstant.deliveryBlue,
        centerTitle: true,
        title: UIConstant.spartanSemiBoldText('Profile', 17, UIConstant.kWhite),
        iconTheme: const IconThemeData(color: UIConstant.kHeaderGrey),
        leading:
            const Icon(BootstrapIcons.filter_left, color: UIConstant.kWhite),
        actions: const [
          Icon(
            BootstrapIcons.bell,
            color: UIConstant.kWhite,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      bottomNavigationBar: Neumorphic(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        // margin: const EdgeInsets.only(top: 15),
        style: NeumorphicStyle(
          lightSource: LightSource.bottom,
          // intensity: 3,
          depth: 3,
          color: UIConstant.deliveryBlue,
          boxShape: NeumorphicBoxShape.roundRect(const BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          )),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              BootstrapIcons.bag,
              color: UIConstant.kBlack,
            ),
            Icon(
              BootstrapIcons.person,
              color: UIConstant.kWhite,
            ),
            Icon(
              BootstrapIcons.gear,
              color: UIConstant.kBlack,
            )
          ],
        ),
      ),
      body: Column(children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.bottomCenter,
          fit: StackFit.loose,
          children: [
            Container(
              height: ScreenUtil().screenHeight * 0.15,
              decoration: const BoxDecoration(
                color: UIConstant.deliveryBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            const Positioned(
                bottom: -40,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1591084728795-1149f32d9866?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80',
                  ),
                ))
          ],
        ),
        SizedBox(
          height: ScreenUtil().screenHeight * 0.07,
        ),
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    BootstrapIcons.person,
                    color: UIConstant.deliveryBlue,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  UIConstant.spartanSemiBoldText(
                      'Lorem Ipsum', 15, UIConstant.kBlack)
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    BootstrapIcons.geo_alt,
                    color: UIConstant.deliveryBlue,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  UIConstant.spartanRegularText(
                      'Cecilia Chapman \n 711-2880 Nulla St.\nMankato Mississippi 96522\n(257) 563-7401',
                      15,
                      UIConstant.kBlack)
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    BootstrapIcons.envelope,
                    color: UIConstant.deliveryBlue,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  UIConstant.spartanRegularText(
                      ' loremipsum@gmail.com', 15, UIConstant.kBlack)
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    BootstrapIcons.telephone,
                    color: UIConstant.deliveryBlue,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  UIConstant.spartanRegularText(
                      '(866)-838-5838', 15, UIConstant.kBlack)
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
