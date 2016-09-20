Bacteria fun = new Bacteria();
Bacteria [] colony;
int i;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(1300,800);
 	background(203, 102, 136);
 	colony = new Bacteria [20];
 	for (int i=0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	fun.show();
 	fun.walk();
 	for (int i = 0; i<colony.length; i++);
 	{
 		colony[i].walk();
 		colony[i].show();
	}

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
  