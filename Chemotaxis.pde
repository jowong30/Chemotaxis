Bacteria [] bob; 

 void setup()   
 {     
 	size(1000,1200);

 	frameRate(60); 

	bob = new Bacteria[10];

	for(int i=0; i < bob.length ; i++ ){
	 	bob[i] = new Bacteria(75,i*60+70);
	 	
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
 		 myX = myX + (int)(Math.random()*4-1);
 		 myY = myY + (int)(Math.random()*2-1);
 	}
 	void show(){
 		fill(255);
 		stroke(0);
 		noStroke();
 		ellipse(myX,myY,50,50);
 		fill(255,0,0);
 		stroke(255,0,0);
 		textAlign(CENTER);
 		textSize(10);
 		text(myY/60 ,myX, myY);
 	}

 }    


/*
 void mousePressed(){
 	if(dist(mouseX,mouseY, 75,100 < 50)){
 		betted = 1;
 	}

 }
*/


