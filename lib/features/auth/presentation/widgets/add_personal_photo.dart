import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_commerce/core/utls/app_assets.dart';
import 'package:e_commerce/core/utls/app_color.dart';
import 'package:e_commerce/features/auth/auth_cubit/cubit/auth_cubit.dart';

class AddPersonalPhotoWidget extends StatelessWidget {
  // Constructor with a key
  const AddPersonalPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        // Get the AuthCubit instance
        var cubit = AuthCubit.get(context);

        // Check if an image is selected
        return cubit.image == null
            ? MaterialButton(
                onPressed: () {
                  // Trigger the addImage method in AuthCubit
                  cubit.addImage();
                },
                child: Stack(
                  children: [
                    // Circular avatar with default SVG image
                    CircleAvatar(
                      backgroundColor: AppColors.kDarkGreyColor,
                      radius: 40,
                      child: ClipOval(
                        child: SvgPicture.asset(
                          AppAssets.avatar,
                          colorFilter: ColorFilter.mode(
                              AppColors.kPrimaryColor, BlendMode.srcIn),
                        ),
                      ),
                    ),
                    // Positioned avatar with 'Add Photo' icon
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: AppColors.kWhiteColor,
                        radius: 16,
                        child: Icon(
                          Icons.add_photo_alternate,
                          color: AppColors.kGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            // Display selected image in a circular avatar
            : CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(cubit.image!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
