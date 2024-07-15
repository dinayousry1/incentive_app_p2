import 'package:flutter/material.dart';

class CustomInvitationsItem extends StatelessWidget {
  const CustomInvitationsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(33, 33, 33, 0.08),
              offset: Offset(0, 4),
              blurRadius: 16,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              // width: 341,
              // height: 30,
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 186, 0, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: const Center(
                  child: Text(
                'ID 255998777',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        top: 8,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            '٢٠٢٣/٢/١٤',
                            style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 1),
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Image.asset('assets/calendar.png')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 83,
                        height: 24,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                            color: const Color.fromRGBO(241, 241, 241, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(217, 217, 217, 1),
                                width: 1)),
                        child: const Text(
                          'المكافأه معلقة',
                          style: TextStyle(
                              fontFamily: 'Tajwal',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(160, 160, 160, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'سالم احمد',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Row(
                      children: [
                        Text(
                          '012222222222',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.phone_enabled,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
