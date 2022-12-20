String message="";

void setup(){
  
  Serial.begin(9600);
}

void loop(){
  
  if (Serial.available()>0)
  {
      while (Serial.available()>0)
    {
      delay(10);
      message+=char(Serial.read()); 
     }
      Serial.print("Receive message : ");
      Serial.println(message);
   }
 ///////////////////////////////////////////////////////
   if (message=="")
     {
       message="";
      }
      
   else if (message=="forward")
     {
       Serial.println("  Do order : forward.");
      }
      
   else if (message=="back")
     {
       Serial.println("  Do order : back.");
      }
   
   
   
   else 
      {
        Serial.println("  Order cannot be recognized.");
       }
 ///////////////////////////////////////////////////////
 
   message="";
}

