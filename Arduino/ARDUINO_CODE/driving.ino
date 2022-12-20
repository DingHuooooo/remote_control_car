
void forward(){
  // 四个轮子各定义速度和方向
  DCMotor_1->setSpeed(50);
  DCMotor_1->run(BACKWARD);
  delay(10);
  DCMotor_2->setSpeed(50);
  DCMotor_2->run(FORWARD);
  delay(10);
  DCMotor_3->setSpeed(50);
  DCMotor_3->run(FORWARD);
  delay(10);
  DCMotor_4->setSpeed(50);
  DCMotor_4->run(FORWARD);
  delay(10);
  
}

void back(){
  
  DCMotor_1->setSpeed(50);
  DCMotor_1->run(FORWARD);
  delay(10);
  DCMotor_2->setSpeed(50);
  DCMotor_2->run(BACKWARD);
  delay(10);
  DCMotor_3->setSpeed(50);
  DCMotor_3->run(BACKWARD);
  delay(10);
  DCMotor_4->setSpeed(50);
  DCMotor_4->run(BACKWARD);
  delay(10);
  
}

void right(){
  
  DCMotor_1->setSpeed(50);
  DCMotor_1->run(BACKWARD);
  delay(10);
  DCMotor_2->setSpeed(50);
  DCMotor_2->run(BACKWARD);
  delay(10);
  DCMotor_3->setSpeed(50);
  DCMotor_3->run(FORWARD);
  delay(10);
  DCMotor_4->setSpeed(50);
  DCMotor_4->run(BACKWARD);
  delay(10);
  
}

void left(){
  
  DCMotor_1->setSpeed(50);
  DCMotor_1->run(FORWARD);
  delay(10);
  DCMotor_2->setSpeed(50);
  DCMotor_2->run(FORWARD);
  delay(10);
  DCMotor_3->setSpeed(50);
  DCMotor_3->run(BACKWARD);
  delay(10);
  DCMotor_4->setSpeed(50);
  DCMotor_4->run(FORWARD);
  delay(10);
  
}

void turnleftfor1s(){
  
  DCMotor_1->setSpeed(30);
  DCMotor_1->run(FORWARD);
  delay(10);
  DCMotor_2->setSpeed(30);
  DCMotor_2->run(BACKWARD);
  delay(10);
  DCMotor_3->setSpeed(30);
  DCMotor_3->run(FORWARD);
  delay(10);
  DCMotor_4->setSpeed(30);
  DCMotor_4->run(FORWARD);
  delay(1000);
  stopp();
}
void turnrightfor1s(){
  
  DCMotor_1->setSpeed(30);
  DCMotor_1->run(BACKWARD);
  delay(10);
  DCMotor_2->setSpeed(30);
  DCMotor_2->run(FORWARD);
  delay(10);
  DCMotor_3->setSpeed(30);
  DCMotor_3->run(BACKWARD);
  delay(10);
  DCMotor_4->setSpeed(30);
  DCMotor_4->run(BACKWARD);
  delay(1000);
  stopp();
}
void stopp(){
  
  DCMotor_1->setSpeed(0);
  DCMotor_1->run(BRAKE);
  delay(10);
  DCMotor_2->setSpeed(0);
  DCMotor_2->run(BRAKE);
  delay(10);
  DCMotor_3->setSpeed(0);
  DCMotor_3->run(BRAKE);
  delay(10);
  DCMotor_4->setSpeed(0);
  DCMotor_4->run(BRAKE);
  delay(10);
  
}
