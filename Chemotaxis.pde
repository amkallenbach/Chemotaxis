Bacteria fun = new Bacteria();
Bacteria [] colony;
// int i;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(800,800);
 	background(203, 102, 136);
 	colony = new Bacteria [30];

 	for (int j = 0; j < colony.length; j++)
 	{
 		colony[j] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(203, 102, 136);   

	for (int i = 0; i < colony.length; i++)
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
 		myX = (int)(Math.random()*401);
 		myY = (int)(Math.random()*401)-200;
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*11)-5;
 		myY = myY + (int)(Math.random()*11)-5;
 	}
 	void show()
 	{
	 	fill(102,135,203);
	 	stroke(255,255,255);
	 	ellipse(myX, myY, 25,25);
 	}
 

 }
  