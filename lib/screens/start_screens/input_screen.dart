import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Otus.Food',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        const SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.only(right: 86, left: 86),
          child: TextField(
            //   cursorColor: Colors.red,
            cursorHeight: 20,
            //controller: editingControllerListRc,

            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 16.0),
              prefixIcon: const Icon(Icons.person, color: Color(0xFFC2C2C2)),
              hintText: 'логин',
              hintStyle: TextStyle(color: const Color(0xFFC2C2C2)),
              filled: true,
              fillColor: Colors.white,

              //floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: const TextStyle(
                fontSize: 16,
                //color: Colors.red,
              ),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(right: 86, left: 86),
          child: TextField(
            //   cursorColor: Colors.red,
            cursorHeight: 20,
            //controller: editingControllerListRc,

            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
              prefixIcon: const Icon(Icons.lock, color: Color(0xFFC2C2C2)),
              hintText: 'пароль',
              hintStyle: TextStyle(color: const Color(0xFFC2C2C2)),
              filled: true,
              fillColor: Colors.white,
              //floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: const TextStyle(
                fontSize: 16,
                //color: Colors.red,
              ),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        InkWell(
          onTap: () => print('hello'),
          child: Container(
            margin: EdgeInsets.only(right: 86, left: 86),
            //width: 100.0,
            height: 48.0,
            decoration: BoxDecoration(
              color: const Color(0xFF165932),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const Center(
              child: Text(
                'Войти',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
