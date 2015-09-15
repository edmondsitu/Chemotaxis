 //declare bacteria variables here 
 int myX;
 int myY;
 int bactColor1;
 int bactColor2;
 int bactColor3;
 Bacteria bob; 

 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	bob = new Bacteria(myX,myY);
 	myX = 250;
 	myY = 250;  
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	bob.show();
 	bob.move();
 	bactColor1 = (int)(Math.random()*255)+1;
 	bactColor2 = (int)(Math.random()*255)+1;
 	bactColor3 = (int)(Math.random()*255)+1;
 }

 class Bacteria    
 {     
 	//lots of java!

 	//contructor code
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 	}
 	//show function for the bacteria
 	void show()
 	{
 		noStroke();
 		fill(bactColor1,bactColor2,bactColor3);
 		ellipse(myX,myY,20,20);
 	}
 	//random walk for bacteria
 	void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}

 }    