Bacteria [] bob; 
int a = 0;
 void setup()   
 {     
 	size(1000,1200);

 	frameRate(30); 

	bob = new Bacteria[10];

	for(int i=0; i < bob.length ; i++ ){
	 	bob[i] = new Bacteria(75,i*50);
	 	
	}	

 }   
 void draw()   
 {    
 	background(197);
 	/*
 	int ax = (int)(Math.random()*40-20) + mouseX/2;
	int ay = (int)(Math.random()*40-20) + mouseY/2;
 	ellipse(ax,ay,100,100);  
 	*/

 	
 	for(int i=0; i < bob.length ; i++ ){
 		bob[i].move();
 		bob[i].show();
 		a=i;
 		
 	}

 }  

 class Bacteria    
 {  
 	
 	int myX, myY;

	Bacteria(int x,int y){
		

		myX=x;
		myY=y;

	}   


 	void move(){
 		 myX = myX + (int)(Math.random()*5+1);
 		 myY = myY + (int)(Math.random()*2);
 	}
 	void show(){
 		fill(255);
 		stroke(0);
 		ellipse(myX,myY,40,40);
 		fill(255,0,0);
 		stroke(255,0,0);
 		text(a ,myX, myY);
 	}

 }    