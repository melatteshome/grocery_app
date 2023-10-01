import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/utils/common/color.dart';
import 'package:grocery_app/utils/common/image.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
height: 70.h,
            decoration: const BoxDecoration(
              
              
              image: DecorationImage(
                fit: BoxFit.cover,
                image:  AssetImage(Images.orangeFruit))
            ),
            
          ), 
                    Align(
            alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                                       color: Colors.white,
                    
                          borderRadius:  BorderRadius.only(topLeft: Radius.circular(5.h,),topRight: Radius.circular(5.h))
                        ),
                        child: Padding(
                          padding: EdgeInsets.all( 5.h,),
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('Sign In', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 23, fontWeight: FontWeight.bold),), 

                               SizedBox(height: 7.h,),

                               TextField(obsecure: false, inputType: TextInputType.emailAddress,hint: 'Email',),
                               SizedBox(height: 2.h,),
                               TextField(obsecure: true, inputType: TextInputType.text, hint: 'Password',),
                               SizedBox(height: 5.h,),

                               Container(
                                height: 7.h ,
                                width: 100.w,
                                decoration:  BoxDecoration(
                                  color: AppColor.lightYellow,
                                  borderRadius: BorderRadius.circular(7.h)
                                ),

                                child: Center(child: Text('SIGN IN', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),
                               )

                            ],
                          ),
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}

class TextField extends StatelessWidget {
  final bool obsecure;
  final bool? hasSufixIcon;
  final String hint;
  final TextInputType inputType ;
   TextField({
    required this.hint,
     this.hasSufixIcon,
    required this.obsecure,
    required this.inputType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 7.h,
     width: 100.w,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(6.h),
       border: Border.all(color: const Color(0xFFCACACA
))
     ),
      child: Center(
        child: Padding(
         padding: const EdgeInsets.only(left:30),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  obscureText: obsecure,
                 autofocus: false,
                 keyboardType: inputType,
                       
                                            decoration:  InputDecoration(
                                             hintText: hint,
                 border: InputBorder.none, 
                                            ),
                ),
              ),
              if(hasSufixIcon== true) Icon(FeatherIcons.eyeOff)
            ],
          ),
        ),
      ),
    );
  }
}