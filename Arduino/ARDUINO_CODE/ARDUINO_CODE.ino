#include <Wire.h>
#include "QGPMaker_MotorShield.h"

QGPMaker_MotorShield AFMS = QGPMaker_MotorShield();
// 导入库文件
QGPMaker_DCMotor *DCMotor_1 = AFMS.getMotor(1);
QGPMaker_DCMotor *DCMotor_2 = AFMS.getMotor(2);
QGPMaker_DCMotor *DCMotor_3 = AFMS.getMotor(3);
QGPMaker_DCMotor *DCMotor_4 = AFMS.getMotor(4);
// 根据接线情况定义电机
String message="";

void setup(){
  
  AFMS.begin(50); // create with the default frequency 50Hz
  Serial.begin(9600);
  // 开启arduino和树莓派通信串口
}

void loop(){
  //loop相当于while 重复执行
  
  if (Serial.available()>0)// Serial.available()返回串口缓存区是否存在待接收数据
  {
      while (Serial.available()>0)
    {
      delay(10);
      message+=char(Serial.read()); //接受命令
     }
      Serial.print("Receive message : ");
      Serial.println(message);
   }

  
 ///////////////////////////////////////////////////////
   if (message=="")
     {
       message="";
      }
  // 以下对命令分类讨论 具体执行函数在driving.ino
   else if (message=="forward")
     {
       forward();
       Serial.println("  Do order : forward.");
      }
   else if (message=="right")
     {
       right();
       Serial.println("  Do order : right.");
      }
   else if (message=="left")
     {
       left();
       Serial.println("  Do order : left.");
      }     
   else if (message=="turn right")
     {
       turnrightfor1s();
       Serial.println("  Do order : turn right.");
      }
   else if (message=="turn left")
     {
       turnleftfor1s();
       Serial.println("  Do order : turn left.");
      }     
   else if (message=="back")
     {
       back();
       Serial.println("  Do order : back.");
      }
   
   else if (message=="stop")
     {
       stopp();
       Serial.println("  Do order : stop.");
      }
   
   else 
      {
        Serial.println("  Order cannot be recognized.");
       }
 ///////////////////////////////////////////////////////
 
   message="";
}
