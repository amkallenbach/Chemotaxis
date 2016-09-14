Bacteria fun = new Bacteria();

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(1300,800);
 	background(203, 102, 136);

 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	fun.show();
 	fun.walk();

 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY;
 	{
 		myX = 650;
 		myY = 400;
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
	 	fill(102,135,203);
	 	stroke(255,255,255);
	 	ellipse(myX, myY, 25,25);
 	}
 

 }
  