import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class InitialScreen extends HookWidget {

  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final elevation = useState(0.0);
    final animationController = useAnimationController(duration: Duration(seconds: 2));
    animationController.addListener(() {
      if(elevation.value < 60) {
      } else {
        elevation.value = 0;
      }
      elevation.value += 4.0;

    });


    useEffect(() {
        animationController.repeat();
        return () {};
      },
      const []
    );
    
    final temp = Scaffold(
      appBar: AppBar(
        title: Text('Gemini-Chat'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: ElevatedButton(
            onPressed: () {context.go('/chat');},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: elevation.value,
              shape: const CircleBorder(
                side: BorderSide(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              )
            ), 
            child: Text('Start', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),)
            ),
        )
        ),
    );

    return temp;
  }
}