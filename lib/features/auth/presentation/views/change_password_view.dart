import 'package:flutter/material.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';
import 'package:planova/features/auth/presentation/views/widgets/bottom_action_button.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:planova/features/auth/presentation/views/widgets/forgot_password_button.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  late TextEditingController _currentPasswordController;
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmPasswordController;

  void _handleChangePassword() {
    if (_globalKey.currentState!.validate()) return;
  }

  @override
  void initState() {
    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  final List<TextFieldModel> textFieldModel = const [
    TextFieldModel(
      hintText: "Current Password",
      isPassword: true,
      isprefixIcon: false,
    ),
    TextFieldModel(
      hintText: "Create a new password",
      isPassword: true,
      isprefixIcon: false,
    ),
    TextFieldModel(
      hintText: "Confirm new password",
      isPassword: true,
      isprefixIcon: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _globalKey,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 72),
                      Text('Change Password', style: Styles().style24SemiBold),
                      const SizedBox(height: 48),
                      CustomTextField(
                        textFieldModel: textFieldModel[0],
                        textEditingController: _currentPasswordController,
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        textFieldModel: textFieldModel[1],
                        textEditingController: _newPasswordController,
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        textFieldModel: textFieldModel[2],
                        textEditingController: _confirmPasswordController,
                      ),
                      const SizedBox(height: 24),
                      const ForgotPasswordButton(),
                    ],
                  ),
                ),

                BottomActionButton(
                  title: "Change Password",
                  onPressed: () {
                    _handleChangePassword();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
