import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/components/buttons/btn_prymary.dart';
import 'package:app_gestion_camaroneras/app/ui/components/inputs/input_text.dart';
import 'package:app_gestion_camaroneras/app/ui/views/login/login_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 40.h),
          padding: EdgeInsets.symmetric(
            horizontal: kMarginLargeApp.w,
          ),
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InputText(
                controller: controller.textCtrlCompania,
                border: InputBorder.none,
                keyboardType: TextInputType.text,
                maxLength: 15,
                labelText: "Compañia",
                filled: true,
                fontColor: AppColors.kPrimary,
                errorText: controller.errorTextEmail.value == ""
                    ? null
                    : controller.errorTextEmail.value,
                onChanged: (value) => controller.errorTextEmail.value = "",
              ),
              SizedBox(height: 20.h),
              Obx(
                () => controller.existsSession.isEmpty
                    ? InputText(
                        controller: controller.textCtrlEmail,
                        border: InputBorder.none,
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 15,
                        labelText: "Correo electrónico",
                        filled: true,
                        fontColor: AppColors.kPrimary,
                        errorText: controller.errorTextEmail.value == ""
                            ? null
                            : controller.errorTextEmail.value,
                        onChanged: (value) =>
                            controller.errorTextEmail.value = "",
                      )
                    : GestureDetector(
                        onTap: null, //controller.removeSession,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.existsSession.value,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              /*  style: AppTextTheme(context)
                                  .h6Bold(color: AppColors.kText), */
                            ),
                            SizedBox(height: 10.h),
                            const Text(
                              "Cambiar usuario",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              /*  style: AppTextTheme(context)
                                  .bodyMediumBold(color: AppColors.kGreen), */
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: 20.h),
              Obx(
                () => InputText(
                  controller: controller.textCtrlPassword,
                  labelText: "Contraseña",
                  border: InputBorder.none,
                  keyboardType: TextInputType.text,
                  obscureText: controller.isObscureText.value,
                  maxLength: 30,
                  maxLines: 1,
                  fontColor: AppColors.kPrimary,
                  suffixIcon: GestureDetector(
                    onTap: controller.showPassword,
                    child: controller.isObscureText.value
                        ? const Icon(
                            Icons.visibility_off_rounded,
                            color: AppColors.kSecondary,
                          )
                        : const Icon(Icons.visibility),
                  ),
                  errorText: controller.errorTextPassword.value == ""
                      ? null
                      : controller.errorTextPassword.value,
                  onChanged: (value) => controller.errorTextPassword.value = "",
                ),
              ),
              SizedBox(height: 30.h),
              GestureDetector(
                onTap: () => Get.toNamed(RoutesName.RECOVERPASSWORD),
                child: Text.rich(
                  TextSpan(
                    text: "¿Has olvidado la contraseña? ",
                    style: AppTextTheme(context).bodyMedium(),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Recuperar aquí",
                        style: AppTextTheme(context)
                            .bodyMediumBold(color: AppColors.kBase),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 40.h),
              Obx(
                () => BtnPrimary(
                  isLoading: controller.isLoading.value,
                  text: "Ingresar",
                  onPressed: controller.isLoading.value
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          controller.doAuthentication();
                        },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
