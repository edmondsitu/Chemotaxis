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

 Bacteria [] colony;

 public void setup()   
 {     
 	//initialize bacteria variables here
 	size(600,600);
 	colony = new Bacteria [500];


 	for(int i = 0; i < colony.length; i++)
 	{
 		colony [i] = new Bacteria((int)(Math.random()*590),(int)(Math.random()*590)); 
 	}
 }   
 public void draw()   
 {    
 	//move and show the bacteria
 	background(0,0,0);
 	ellipse(mouseX, mouseY, 50, 50);
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
 		mySize = (int)(Math.random()*6)+5;
 	}

 	//show function for the bacteria
 	public void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX,myY,mySize,mySize);
 	}
 	//random walk for bacteria
 	public void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
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
 	}
 	public void change()
 	{
 		if(get(myX,myY) != color(myColor))
 		{
 			mySize = mySize + 1;
 		}
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
