//Walker bob;
//Walker [] shadyacres = {new Walker(), new Walker(), new Walker()};
 Walker [] sunnysquare;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
  size(500,500);
  background(0);
//  bob = new Walker();
  sunnysquare = new Walker[100];
  int i = 0;
  while (i<sunnysquare.length){
    sunnysquare[i] = new Walker();
    i++;
  }
 }   
 void draw()   
 {    
 	//move and show the bacteria   
//  bob.walk();
//  bob.show();
//  shadyacres[0].walk();
//  shadyacres[0].show();
 // fill(78,53,36);
 //fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  for (int i = 0; i < sunnysquare.length; i++){
    sunnysquare[i].walk();
    sunnysquare[i].show();
 }  
 class Bacteria    
{
  int myX, myY;
  int myColor;
  Walker()
  {
    myX = myY =  250;
    myColor = color((int)(Math.random()*20)+68, (int)(Math.random()*20)+43,(int)(Math.random()*20)+26);
  }

  void walk()
  {
    if(mouseX >myX){
       //myX=myX+(int)(Math.random()*4)-2;
       // {-2,-1,0,1}
      // myX=myX+(int)(Math.random()*5)-3;
       // {-3,-2,-1,0,1}
       myX = myX +(int)(Math.random()*9)-5;
     //{-5,-4,-3,-2,-1,0,1,2,3};
    }
       else{
         //myX = myX + (int)(Math.random()*4)-1;
         // {-1,0,1,2,3}
         // myX = myX +(int)(Math.random()*5)-1;
         //{-1,0,1,2,3}
         myX = myX + (int)(Math.random()*9)-3;
         //{-3,-2,-1,0,1,2,3,4,5}
       }
    if(mouseY >myY){
      //myY = myY + (int)(Math.random()*4)-2;
      //{-2,-1,0,1}
      //myY = myY + (int)(Math.random()*5)-3;
      //{-3,-2,-1,0,1}
      myY= myY +(int)(Math.random()*9)-5;
    }
    else{
      //myY = myY + (int)(Math.random()*4)-1;
            //{-1,0,1,2}
     // myY = myY +(int)(Math.random()*5)-1;
               //{-1,0,1,2,3}
     myY = myY + (int)(Math.random()*9)-3;
    }
      
//    myX = myX + (int)(Math.random()*7);
//  myY = myY + (int)(Math.random()*7)-3;
  }
  void show(){
    fill(myColor);
    strokeWeight(1);
    ellipse(myX,myY, 25,28);
    ellipse(myX-5, myY+10,15,15);
    strokeWeight(2);
    //leg 1
    line(myX+6,myY+7, myX + 12, myY + 12);
    line(myX+12, myY+12, myX +13, myY+15);
    //leg2
    line(myX +11, myY+4, myX + 16, myY + 5);
    line(myX + 16, myY + 5, myX + 20, myY + 10);
    //leg 3
    line(myX + 13, myY, myX + 18, myY -1);
    line(myX + 18, myY-1, myX + 20, myY +4);
    //leg 4
    line(myX + 12, myY -3, myX + 17, myY -5);
    line(myX + 17, myY -5, myX + 19, myY -2);
    //leg 5
    line(myX -13, myY +7, myX -17, myY+10);
    //leg 6
    line(myX -12, myY + 2, myX - 15, myY -3); 
    line(myX -15, myY -3, myX -16, myY+3);
    //leg 7
    line(myX -11, myY-8, myX - 13, myY-9);
    line(myX -13, myY - 9, myX -15, myY -5);
    }
  
 }    
