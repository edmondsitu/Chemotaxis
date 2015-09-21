 //declare bacteria variables here 

 Bacteria [] colony;

 void setup()   
 {     
   //initialize bacteria variables here
   size(600,600);
   colony = new Bacteria [300];


   for(int i = 0; i < colony.length; i++)
   {
     colony [i] = new Bacteria((int)(Math.random()*590),(int)(Math.random()*590)); 
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0,0,0);
   if(mousePressed)
   {
   ellipse(mouseX, mouseY, 20, 20);
   }
   //ellipse(mouseX, mouseY, 50, 50);
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
     colony[i].change();
   }
 }
 
 class Bacteria    
 {     
   //lots of java!

   //contructor code
   int myX;
   int myY;
   int myColor;
   int mySize;
   Bacteria(int x, int y)
   {
     myX = x;
     myY = y;
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     mySize = (int)(Math.random()*6)+1;
   }

   //show function for the bacteria
   void show()
   {
     noStroke();
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
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
     /*
     if( mouseX > myX)
     {
       myX = myX + (int)(Math.random()*5)-1;
     }
     if( mouseX < myX)
     {
       myX = myX + (int)(Math.random()*3)-2;
     }
     if( mouseY > myY)
     {
       myY = myY + (int)(Math.random()*5)-1;
     }
     if( mouseY < myY)
     {
       myY = myY + (int)(Math.random()*3)-2;
     }
     */
     
   }
   void change()
   {
     
     if(mousePressed)
     {
       mySize = (int)(Math.random()*6)+1;
     }
       
     if(get(myX + 5 + mySize/2,myY + 5 + mySize/2) != color(0))
     {
       mySize = mySize + 1;
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

 }    
