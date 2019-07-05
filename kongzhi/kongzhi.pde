import processing.serial.*;
Serial port;
boolean bPressed1 = false;
boolean bPressed2 = false;
boolean bPressed3 = false;
boolean bPressed4 = false;
boolean bPressed5 = false;
PImage img1;
PFont myFont;
void setup(){
  myFont = createFont("Arial", 15);
  textFont(myFont);
  port=new Serial(this,"COM4",9600); //Arduino
  img1=loadImage("fangxiangpan.jpg");
  background(img1);


  size(800,600);
}

void draw(){

  if (bPressed1==true)
  {
    stroke(255);
    fill(255);
    rect(350,10,100,100);
  }
  else
  {
    stroke(255);
    fill(100);
    rect(350,10,100,100);
  }
   if (bPressed2==true)
  {
    stroke(255);
    fill(255);
    rect(100,250,100,100);
  }
  else
  {
    stroke(255);
    fill(100);
   rect(100,250,100,100);
  }
     if (bPressed3==true)
  {
    stroke(255);
    fill(255);
    rect(600,250,100,100);
  }
  else
  {
    stroke(255);
    fill(100);
   rect(600,250,100,100);
  }
   if (bPressed4==true)
  {
    stroke(255);
    fill(255);
    rect(350,490,100,100);
  }
  else
  {
    stroke(255);
    fill(100);
    rect(350,490,100,100);
  }
  if (bPressed5==true)
  {
    stroke(255);
    fill(255);
    ellipse(width/2,height/2,200,200);
  }
  else
  {
    stroke(255);
    fill(100);
    ellipse(width/2,height/2,200,200);
  }
  fill(255);
  textSize(18);
  text("FORWARD",355,67);
  text("BACKWARD",350,547);
  text("RIGHT",624,307);
  text("LEFT",130,307);
  textSize(30);
  text("STOP",362,315);
 
}

void mousePressed(){
  // Rectangle UP
  if(mouseX>=350 && mouseX<=450 && mouseY>=10 && mouseY<=110)
  {
    bPressed1 = true;
    port.write("f");
  }
  // Rectangle LEFT
  else if(mouseX>=100 && mouseX<=200 && mouseY>=250 && mouseY<=350)
  {
    bPressed2=true;
    port.write("l");
  }
  // Rectangle RIGHT
  else if(mouseX>=600 && mouseX<=700 && mouseY>=250 && mouseY<=350)
  {
    bPressed3=true;
    port.write("r");
  }
  // Rectangle DOWN
  else if(mouseX>=350 && mouseX<=450 && mouseY>=490 && mouseY<=590)
  {
    bPressed4=true;
    port.write("b");
  }
  // CIRCLE STOP
  else if((mouseX-400)*(mouseX-400)+(mouseY-300)*(mouseY-300)<=10000)
  {
    bPressed5=true;
    port.write("s");
  }
}

void mouseReleased() {
  bPressed1 = false;
  bPressed2 = false;
  bPressed3 = false;
  bPressed4 = false;
  bPressed5 = false;
  
}
