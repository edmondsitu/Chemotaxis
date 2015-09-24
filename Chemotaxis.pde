 //declare bacteria variables here 

 Bacteria [] colony;

 void setup()   
 {     
   //initialize bacteria variables here
   size(600,600);
   colony = new Bacteria [2000];


   for(int i = 0; i < colony.length; i++)
   {
     colony [i] = new Bacteria((int)(Math.random()*590),(int)(Math.random()*590)); 
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   if(mousePressed)
   {
   noStroke();
   fill(255,0,0);
   ellipse(mouseX, mouseY, 20, 20);
   }
   //ellipse(mouseX, mouseY, 50, 50);
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
     //colony[i].change();
   }
 }
 
 class Bacteria    
 {     
   //lots of java!

   //contructor code
   int myX;
   int myY;
   //int [] myColor;
   int [] myColor = {color(255,0,0),color(255,255,255)};
   int chooseColor;
   int mySize;
   boolean alive;
   Bacteria(int x, int y)
   {
     alive = true;
     myX = x;
     myY = y;
     chooseColor = (int)(Math.random()*2);
     mySize = (int)(Math.random()*16)+5;
   }

   //show function for the bacteria
   void show()
   {

   	if(get(myX, myY) == color(255,255,255))
   	{
   		mySize += 5;
   		alive = false;
   	}

   	if( alive == true)
   	{
     noStroke();
     fill(myColor[chooseColor]);
     ellipse(myX,myY,mySize,mySize);
   	}

   }
   //random walk for bacteria
   void move()
   {
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
     if( myX > 595)
     {
       myX = myX - 20;
     }
     if( myX < 5)
     {
       myX = myX + 20;
     }
     if( myY > 595)
     {
       myY = myY - 20;
     }
     if( myY < 5)
     {
       myY = myY - 20;
     }     
     
     if( mouseX > myX && mousePressed)
     {
       myX = myX + (int)(Math.random()*5)-1;
     }
     if( mouseX < myX && mousePressed)
     {
       myX = myX + (int)(Math.random()*3)-2;
     }
     if( mouseY > myY && mousePressed)
     {
       myY = myY + (int)(Math.random()*5)-1;
     }
     if( mouseY < myY && mousePressed)
     {
       myY = myY + (int)(Math.random()*3)-2;
     }
     
     
   }

/*
   void change()
   {
          
     if(get(myX + 5 + mySize/2,myY + 5 + mySize/2) != color(0) && (myX + 5 + mySize/2) < 595 && (myY + 5 + mySize/2) < 595 && (myX + 5 + mySize/2) > 5 && (myY + 5 + mySize/2) > 5)
     {
       mySize = mySize + 2;
       int moveDir = (int)(Math.random()*4)+1;
       
       if( moveDir == 1)
       {
         myX = myX + 10;
       } 
       if( moveDir == 2)
       {
         myY = myY + 10;
       }
       if( moveDir == 3)
       {
         myX = myX - 10;
       }
       if( moveDir == 4)
       {
         myY = myY - 10;
       }
       
     }
   }
 */

 }    

