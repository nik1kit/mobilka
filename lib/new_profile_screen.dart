import 'package:flutter/material.dart';

class NewProfileScreen extends StatelessWidget {
  const NewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---- Нижнее меню ----
      bottomNavigationBar: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;

          final paddingVertical = screenWidth * 0.02;

          return Container(
            padding: EdgeInsets.symmetric(vertical: paddingVertical),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey, width: 0.2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navButton(
                  context: context,
                  iconPath: "lib/assets/icons/home.png",
                  active: false,
                  onTap: () {},
                ),

                _navButton(
                  context: context,
                  iconPath: "lib/assets/icons/profile.png",
                  active: true,
                  label: "Профили",
                  onTap: () {},
                ),

                _navButton(
                  context: context,
                  iconPath: "lib/assets/icons/calendar.png",
                  active: false,
                  onTap: () {},
                ),
              ],
            ),
          );
        },
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Статус-бар: время + иконки
                    Row(
                      children: [
                        Text(
                          "09:41",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Spacer(), // растягивает пространство между часами и иконками

                        Row(
                          children: [
                            Image.asset(
                              "lib/assets/icons/Wifi.png",
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.015,
                            ),

                            Image.asset(
                              "lib/assets/icons/Battery.png",
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.015,
                            ),

                            Image.asset(
                              "lib/assets/icons/Mobile Signal.png",
                              width: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.width * 0.025),

                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "lib/assets/icons/arrow.png",
                            width: MediaQuery.of(context).size.width * 0.06,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),

                        Expanded(
                          child: Text(
                            "Новый профиль",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.025),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.08,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Text(
                "Проверьте данные и создайте\nновый профиль",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.025),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Аватар
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.08,
                  backgroundColor: Colors.blue.shade50,
                  child: Image.asset(
                    "lib/assets/icons/profile.png",
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),

                SizedBox(width: MediaQuery.of(context).size.width * 0.05),

                // Контент справа
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Кнопки ролей
                      Row(
                        children: [
                          _roleButton(context, "Пациент", false),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          _roleButton(context, "Сын", true),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),

                      // Имя
                      Text(
                        "Чехов Андрей Львович",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width * 0.048,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.025),

            _infoBlock(context, "Дата рождения", "20.01.2019"),
            _infoBlock(context, "Пол", "Мужской"),
            _infoBlock(context, "Свидетельство о рождении", "VIIЮК 123456"),
            _infoBlock(context, "Полис ОМС", "1000000000000011"),
            _infoBlock(context, "СНИЛС", "100-100-100 10"),

            SizedBox(height: MediaQuery.of(context).size.width * 0.025),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                  vertical: MediaQuery.of(context).size.width * 0.03,
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Создать новый профиль",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.025),
          ],
        ),
      ),
    );
  }

  // --- Вспомогательные виджеты ---

  Widget _roleButton(BuildContext context, String text, bool isActive) {
    final double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: w * 0.015,
        horizontal: isActive ? w * 0.03 : 0,
      ),
      decoration: BoxDecoration(
        color: isActive
            ? Colors.lightBlue.withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(w * 0.03),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Nunito",
          fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
          fontSize: w * 0.035,
          color: isActive
              ? Colors.blue
              : const Color.fromARGB(255, 153, 153, 153),
        ),
      ),
    );
  }

  Widget _infoBlock(BuildContext context, String label, String value) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(bottom: size.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Лейбл
          Text(
            label,
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: size.width * 0.035, // адаптивный размер
              color: const Color(0xFF9F9F9F),
            ),
          ),

          SizedBox(height: size.height * 0.006),

          // Значение
          Text(
            value,
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: size.width * 0.042, // адаптивный шрифт
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _navButton({
  required BuildContext context,
  required String iconPath,
  required bool active,
  required VoidCallback onTap,
  String? label,
}) {
  final double w = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: w * 0.015, horizontal: w * 0.03),
      decoration: BoxDecoration(
        color: active
            ? Colors.lightBlue.withOpacity(0.1) // фон как в _roleButton
            : Colors.transparent,
        borderRadius: BorderRadius.circular(w * 0.03),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            width: w * 0.06,
            height: w * 0.06,
            color: active ? Colors.blue : Colors.grey,
          ),

          if (label != null) ...[
            SizedBox(width: w * 0.02),
            Text(
              label,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: w * 0.035,
                fontWeight: active ? FontWeight.w700 : FontWeight.w500,
                color: active ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ],
      ),
    ),
  );
}
