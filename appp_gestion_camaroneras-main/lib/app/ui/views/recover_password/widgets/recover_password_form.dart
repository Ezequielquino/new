import 'package:app_gestion_camaroneras/app/ui/components/buttons/btn_prymary.dart';
import 'package:app_gestion_camaroneras/app/ui/components/inputs/input_text.dart';
import 'package:app_gestion_camaroneras/app/ui/views/recover_password/recover_password_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RecoverPasswordForm extends StatelessWidget {
  const RecoverPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecoverPasswordController>(
      builder: (controller) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30.h),
          padding: EdgeInsets.symmetric(
            horizontal: kMarginLargeApp.w,
          ),
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recuperar\nContraseña",
                style: AppTextTheme(context).headlineMedium(),
              ),
              SizedBox(height: 10.h),
              Text(
                "Te enviaremos un enlace a tu correo para que puedas cambiar la contraseña",
                style: AppTextTheme(context).bodyMedium(),
              ),
              SizedBox(height: 40.h),
              Obx(
                () => InputText(
                  controller: controller.textCtrlEmail,
                  labelText: "Correo electrónico",
                  border: InputBorder.none,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 30,
                  maxLines: 1,
                  fontColor: AppColors.kPrimary,
                  errorText: controller.errorTextEmail.value == ""
                      ? null
                      : controller.errorTextEmail.value,
                  onChanged: (value) => controller.errorTextEmail.value = "",
                ),
              ),
              SizedBox(height: 40.h),
              Obx(
                () => BtnPrimary(
                  isLoading: controller.isLoading.value,
                  text: "Enviar",
                  onPressed: controller.isLoading.value
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          controller.sendEmail();
                        },
                ),
              ),
              SizedBox(height: 25.h),
              Center(
                child: GestureDetector(
                  onTap: Get.back,
                  child: Text(
                    "Cancelar",
                    style: AppTextTheme(context)
                        .bodyMediumBold(color: AppColors.kBase),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
