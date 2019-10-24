Bacteria [] bob; 
boolean start = false;
int [] arrayz = new int[10];
int aa = 0;


 void setup()   
 {     
 	size(1000,1200);

 	frameRate(60); 

	bob = new Bacteria[10];

	for(int i=0; i < bob.length ; i++ ){
	 	bob[i] = new Bacteria(75,i*60+70);
	 	//bob[i].show();
	 	
	}	
	
 }   
 void draw()   
 {    
 	background(0,200,0);
 	

 	rect(905,0,5,1200);
 	/*
 	int ax = (int)(Math.random()*40-20) + mouseX/2;
	int ay = (int)(Math.random()*40-20) + mouseY/2;
 	ellipse(ax,ay,100,100);  
 	*/
 	for(int i=0; i < bob.length ; i++ ){
	 		
	 		bob[i].show();
	 		
	 }
 	if(mousePressed){
 		start=true;

 	}
 	if(start==true){
	 	for(int i=0; i < bob.length ; i++ ){
	 		bob[i].move();

	 		if(bob[i].myX >= 900){
	 			aa=i;

	 			textSize(50);
	 			//ob[i].f;
	 			text("Horse number " + (aa+1) + " was first place", 500,600);

	 			noLoop();
			}

	 		//bob[i].show();

	 		arrayz[i] = aa+1;
	 	}
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

 		if(myX<900){
	 		 //myX = myX + (int)(Math.random()*4-1);
	 		 myX = myX + (int)(Math.random()*4-1);
	 		 myY = myY + (int)(Math.random()*2-1);
 		}//else if(myX>=900){
 			
 		//}

 	}
 	void show(){
 		fill(255);
 		stroke(0);
 		noStroke();
 		fill(0);
 		ellipse(myX+11,myY-14, 8,25);
 		fill(97, 52, 0);
 		ellipse(myX,myY,30,14);
 		ellipse(myX+13,myY-14, 6,24);
 		ellipse(myX+16 , myY-20 , 14,8);
 		if(frameCount%15>=1){
 			
 			ellipse(myX+15,myY+10,10,20);
 			ellipse(myX-15,myY+10,10,20);
 			
 		}

 		if(frameCount%15<1){
 			
 			translate(myX,myY);
 			rotate(PI/4);
 			//ellipse(myX+13,myY -10,10,20);
 			//ellipse(myX+16,myY-20,10,20);
 			ellipse(-10,13,10,20);
 			rotate(-PI/4);
 			rotate(-PI/4);
 			ellipse(10,20,10,20);
 			rotate(PI/4);
 			
 			translate(-myX,-myY);
 			
 		}

 		fill(255);
 		stroke(255);
 		textAlign(CENTER);
 		textSize(10);
 		text(myY/60 ,myX, myY+2);
 	}

 }    



 void mousePressed(){
 	//if(dist(mouseX,mouseY, 75,100 < 50)){
 	//	betted = 1;
 	//}
 	if(mouseButton == RIGHT){
		for(int i = 0; i < bob.length;i++){
	 		loop();
	 		bob[i].myX = 75;
	 	}
 	}
 	
 }

