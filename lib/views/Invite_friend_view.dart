import 'package:flutter/material.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Center(
          child: Container(
            width: 342,
            height: 49,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color.fromRGBO(248, 248, 248, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Rectangle.png',
                  width: 54,
                  height: 54,
                  fit: BoxFit.scaleDown,
                ),
                const Text(
                  'احصل علي كاش باك بسهولة',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(122, 122, 122, 1),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
        Image.asset('assets/qr-code.png', width: 180, height: 180),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        const Text(
          'QR افتح كاميرا تليفون صديقك وامسح',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 13,
            fontWeight: FontWeight.w200,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        const Text(
          'او',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(236, 103, 7, 1),
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        const Text(
          ' انشر اللينك مع صديقك',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Container(
          width: 342,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: Colors.white,
            border: Border.all(
              color: const Color.fromRGBO(236, 236, 236, 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/m.png'),
              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
              Container(
                width: 240,
                height: 20,
                padding: const EdgeInsets.only(right: 9),
                margin: const EdgeInsets.only(left: 6),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
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
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 59,
                height: 32,
                color: const Color.fromRGBO(255, 186, 0, 1),
                padding: const EdgeInsets.only(left: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'نشر',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'سجل الترشيحات',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(251, 186, 0, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
