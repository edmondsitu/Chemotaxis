import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here 
 int myX;
 int myY;
 int bactColor1;
 int bactColor2;
 int bactColor3;
 Bacteria bob; 

 public void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	bob = new Bacteria(myX,myY);
 	myX = 250;
 	myY = 250;  
 }   
 public void draw()   
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
 	public void show()
 	{
 		noStroke();
 		fill(bactColor1,bactColor2,bactColor3);
 		ellipse(myX,myY,20,20);
 	}
 	//random walk for bacteria
 	public void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}

 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
