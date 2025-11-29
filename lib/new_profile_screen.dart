import 'package:flutter/material.dart';

class NewProfileScreen extends StatelessWidget {
  const NewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---- Нижнее меню ----
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey, width: 0.2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("lib/assets/icons/home.png", width: 30, height: 30),
            Row(
              children: [
                Image.asset(
                  "lib/assets/icons/profile.png",
                  width: 30,
                  height: 30, // прозрачная активная иконка
                ),
                SizedBox(width: 5), // небольшой отступ между иконкой и текстом
                Text(
                  'Профили',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
            Image.asset("lib/assets/icons/calendar.png", width: 30, height: 30),
          ],
        ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "09:41",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "lib/assets/icons/Wifi.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              "lib/assets/icons/Battery.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              "lib/assets/icons/Mobile Signal.png",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Заголовок + кнопка назад
                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "lib/assets/icons/arrow.png",
                            width: 24,
                            height: 24,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Новый профиль",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Проверьте данные и создайте\nновый профиль",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 15,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 25),

            // ---- Блок с аватаром + кнопки + имя ----
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Аватар слева ✔
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue.shade50,
                  child: Image.asset(
                    "lib/assets/icons/profile.png",
                    width: 30,
                    height: 30, // прозрачная активная иконка
                  ),
                ),

                const SizedBox(width: 20),

                // Блок справа (Пациент/Сын + имя)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Роли
                    Row(
                      children: [
                        _roleButton("Пациент", false),
                        const SizedBox(width: 12),
                        _roleButton("Сын", true),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // Имя
                    const Text(
                      "Чехов Андрей Львович",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            _infoBlock("Дата рождения", "20.01.2019"),
            _infoBlock("Пол", "Мужской"),
            _infoBlock("Свидетельство о рождении", "VIIЮК 123456"),
            _infoBlock("Полис ОМС", "1000000000000011"),
            _infoBlock("СНИЛС", "100-100-100 10"),

            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50), // ширина минимальная
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                ), // внутренние отступы
                child: Text(
                  "Создать новый профиль",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // --- Вспомогательные виджеты ---

  Widget _roleButton(String text, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: isActive
            ? 12
            : 0, // <-- горизонтальный padding только для активной роли
      ),
      decoration: BoxDecoration(
        color: isActive
            ? Colors.lightBlue.withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Nunito",
          fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
          fontSize: 14,
          color: isActive
              ? Colors.blue
              : const Color.fromARGB(255, 153, 153, 153),
        ),
      ),
    );
  }

  Widget _infoBlock(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: "Nunito",
              fontSize: 14,
              color: Color(0xFF9F9F9F),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontFamily: "Nunito",
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
