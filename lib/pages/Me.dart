import 'package:shuiyunjian/components/avatarLoader.dart';
import 'package:shuiyunjian/pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Me extends StatefulWidget {
  const Me({super.key});

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.1
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              // TODO: 加载用户头像
              AvatarLoader(imageUrl: "https://avatars.githubusercontent.com/u/53514686?s=400&u=61843f478717b4305d8977c85704e74662c2d435&v=4"),
              const SizedBox(
                width: 20,
              ),
              // TODO: 加载用户名称
              // TODO: 若用户未登录则显示登录注册按钮
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("我是用户名",style: const TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
                  Text("我是简介")
                ],
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView(
              children: [
                ListTile(
                  title: const Text("设置"),
                  leading: const Icon(Icons.settings),
                  onTap: (){
                    Get.to(() => const Settings());
                  },
                ),
                // TODO: 按下后弹出关于窗口
                ListTile(
                  title: const Text("关于"),
                  leading: const Icon(Icons.help_outline),
                  onTap: (){

                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}