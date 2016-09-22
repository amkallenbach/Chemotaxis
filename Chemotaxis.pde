Bacteria fun = new Bacteria();
Bacteria [] colony;
// int i;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(800,800);
 	background(153,197,229);
 	colony = new Bacteria [30];

 	for (int j = 0; j < colony.length; j++)
 	{
 		colony[j] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(153,197,229);   

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
 		myX = (int)(Math.random()*1000);
 		myY = (int)(Math.random()*1000);
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 		
 		if (mouseX > myX)
 		{
 			myX += (int)(Math.random()*11)-1;
 		}
 		if (mouseX < myY)
 		{
 			myX += (int)(Math.random()*11)-9;
 		}
 		if (mouseY > myY)
		{
			myY += (int)(Math.random()*11)-1;
		}
		if (mouseY < myY)
		{
			myY += (int)(Math.random()*11)-9;
		}
 	}
 	void show()
 	{
	 	noStroke();
	 	fill(229,223,153); //bee body
	 	ellipse(myX, myY,30,30);
	 	fill(86,84,57); //stripe
	 	ellipse(myX-10,myY,30,30);
	 	fill(229,223,153); //bee body
	 	ellipse(myX-20, myY,30,30);
	 	fill(57,56,38); //eyes
	 	ellipse(myX-30,myY,5,5);
	 	ellipse(myX-17,myY,5,5);
	 	fill(255); //wings
	 	stroke(153,229,223);
	 	strokeWeight(0.5);
	 	ellipse(myX,myY-20,15,15);
	 	ellipse(myX-10,myY-20,15,15);
	 	stroke(57,56,38); //smile
	 	strokeWeight(3);
	 	noFill();
	 	arc(myX-25,myY+5,7, 7, 0,PI);
	 	
 	}
 

 }
  