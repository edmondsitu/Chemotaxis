 //declare bacteria variables here 

 Bacteria [] colony;

 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	colony = new Bacteria [100];


 	for(int i = 0; i < colony.length; i++)
 	{
 		colony [i] = new Bacteria(250,250); 
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }

 class Bacteria    
 {     
 	//lots of java!

 	//contructor code
 	int myX;
 	int myY;
 	int myColor;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}

 	//show function for the bacteria
 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 	//random walk for bacteria
 	void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}

 }    