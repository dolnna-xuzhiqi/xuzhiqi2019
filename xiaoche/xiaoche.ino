int MIN1=8; 
int MIN2=9;
int MIN3=12; 
int MIN4=13;
byte mode;
void TF()
{ 
  digitalWrite(MIN1,HIGH);
  digitalWrite(MIN2,LOW);
  digitalWrite(MIN3,HIGH);
  digitalWrite(MIN4,LOW);
  delay(10); 
  } 
void TL() { 
  digitalWrite(MIN1,HIGH); 
  digitalWrite(MIN2,LOW); 
  digitalWrite(MIN3,LOW); 
  digitalWrite(MIN4,LOW); 
  delay(10);
  }
void TR() { 
  digitalWrite(MIN1,LOW);
  digitalWrite(MIN2,LOW); 
  digitalWrite(MIN3,HIGH); 
  digitalWrite(MIN4,LOW); 
  delay(10); 
  } 
void TB() { 
  digitalWrite(MIN1,LOW); 
  digitalWrite(MIN2,HIGH); 
  digitalWrite(MIN3,LOW);
  digitalWrite(MIN4,HIGH); 
  delay(10);
  } 
void STOP(){
  digitalWrite(MIN1,LOW); 
  digitalWrite(MIN2,LOW); 
  digitalWrite(MIN3,LOW); 
  digitalWrite(MIN4,LOW); 
  }
void setup() { 
  Serial.begin(9600); 

  pinMode(MIN1,OUTPUT);
  pinMode(MIN2,OUTPUT);
  pinMode(MIN3,OUTPUT); 
  pinMode(MIN4,OUTPUT); 
  } 
void loop() {
  while (Serial.available()) { 
    mode = char(Serial.read()); 
    if (mode == 'f') 
    TF(); 
    else if (mode == 'l') 
    TL();
    else if (mode == 'r')
    TR();
    else if (mode == 'b')
    TB(); 
    else if (mode == 's') 
    STOP(); 
    } 
    delay(20) ;
}
  // put your main code here, to run repeatedly:
