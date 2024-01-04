import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../shared/config/assets.dart';

class AddVerificationButton extends StatelessWidget {
  final File? file;
  final String label;
  final Function(File?) onImageChanged;
  const AddVerificationButton({
    super.key,
    this.file,
    required this.label,
    required this.onImageChanged,
  });

  @override
  Widget build(BuildContext context) {
    Future getImage() async {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) onImageChanged(File(image.path));
    }

    if (file != null) {
      return GestureDetector(
        onTap: getImage,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(28.w),
              child: Image.file(
                file!,
                width: ScreenUtil().screenWidth,
                height: 160.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 6,
              top: 6,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () => onImageChanged(null),
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
    return GestureDetector(
      onTap: getImage,
      child: Container(
        width: ScreenUtil().screenWidth,
        height: 160.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.w),
          border: Border.all(width: 1, color: const Color(0xFFCCDAFF)),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 22.h, bottom: 11.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.addDoc,
              fit: BoxFit.fitHeight,
              height: 92.h,
            ),
            const Spacer(),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFFCCDAFF),
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
