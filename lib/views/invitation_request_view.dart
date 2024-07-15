import 'package:flutter/material.dart';
import 'package:incentive_app_p2/widgets/custom_dialog.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class InvitationRequest extends StatefulWidget {
  @override
  State<InvitationRequest> createState() => _InvitationRequestState();
}

class _InvitationRequestState extends State<InvitationRequest> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String? governorate;
  String? neighborhood;
  String initialCountry = 'SA';

  PhoneNumber number = PhoneNumber(isoCode: 'SA');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/Menu.png',
              width: 60,
              height: 60,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
        title: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
            ),
            const Text(
              'إرسال طلب إنضمام',
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8, right: 8),
          child: Image.asset(
            'assets/hse.png',
            width: 20,
            height: 20,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'الإسم الأخير',
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            textDirection: TextDirection.rtl,
                            style: const TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              height: 1.5,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'الإسم الأخير',
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(198, 198, 198, 1),
                                fontFamily: 'Tajawal',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(236, 236, 236, 1),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'يرجى إدخال الإسم الأخير';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'الإسم الأول',
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            textDirection: TextDirection.rtl,
                            style: const TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              height: 1.5,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'الإسم الأول',
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(198, 198, 198, 1),
                                fontFamily: 'Tajawal',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(236, 236, 236, 1),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'يرجى إدخال الإسم الأول';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 270),
                  child: Text(
                    'رقم الموبايل',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 245, 245, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: InternationalPhoneNumberInput(
                      hintText: 'إكتب رقم الموبايل',
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue: number,
                      textFieldController: controller,
                      formatInput: true,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder: const OutlineInputBorder(),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'يرجى إدخال رقم الموبايل';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 280),
                  child: Text(
                    'المحافظة',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 358,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(33, 33, 33, 0.08),
                        blurRadius: 16.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        hintText: ' المحافظة ',
                        border: InputBorder.none,
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 30,
                        color: Color.fromRGBO(251, 186, 0, 1),
                      ),
                      items: ['Option 1', 'Option 2', 'Option 3']
                          .map((option) => DropdownMenuItem(
                                value: option,
                                child: Text(option),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          governorate = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'يرجى اختيار المحافظة';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 255),
                  child: Text(
                    'الحى (إختيارى)',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 358,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(33, 33, 33, 0.08),
                        blurRadius: 16.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        hintText: 'الحى ',
                        border: InputBorder.none,
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 30,
                        color: Color.fromRGBO(251, 186, 0, 1),
                      ),
                      items: ['Option 1', 'Option 2', 'Option 3']
                          .map((option) => DropdownMenuItem(
                                value: option,
                                child: Text(option),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          neighborhood = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'يرجى اختيار الحي';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 280),
                  child: Text(
                    'كود الدعوة',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  width: 358,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(236, 236, 236, 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 215, top: 20),
                    child: TextFormField(
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        height: 1.5,
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'IOFPDPFDFM8DFLDXX',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(198, 198, 198, 1),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'يرجى إدخال كود الدعوة';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 190,
                    height: 56,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 8,
                          spreadRadius: 4,
                          color: Color.fromRGBO(255, 186, 0, 0.24))
                    ]),
                    child: MaterialButton(
                      elevation: 1,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) => CustomDialog());
                        }
                      },
                      color: const Color.fromRGBO(255, 186, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'ارسل',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(251, 186, 0, 1)),
                      ),
                    ),
                    const Text(
                      'لديك حساب؟',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(140, 140, 140, 1)),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'By ',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Transform.translate(
                      offset: const Offset(0.0, -5.0),
                      child: Image.asset(
                        'assets/Qara_Logo.png',
                        height: 24,
                        width: 55,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
