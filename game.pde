int angle;
int angle1;
int c;
int a;
int z;
int x;
int n;
int v;
int b;
int q =0;
int h=0;
int j;
boolean start=false;
boolean finish=false;
boolean gameOverKey=false;
int [] [] linecolor = {{0,0,0},{250,0,0},{255,255,255},{0,255,0},{0,0,255}}; 


Timer timer; 

int []line=new int[5];

void rand() {
  Boolean[] arr= new Boolean[6];
  int sum=0;
  for (int i=1; i<=5; i++)
  {
    arr[i]=false;
  }
  while (sum!=5) {
    int  r = int(random(1, 6));
    if (arr[r]!=true) {
      line[sum]=r;
      arr[r]=true;
      sum++;
    }
  }
}

void setup(){
  size(800,1080);
  background(200);
  timer = new Timer(500); 
  timer.start();
  noStroke();
  
  fill(0,0,0);
  ellipse(200,1000,50,50);
  fill(255,0,0);
  ellipse(300,1000,50,50);
  fill(255,255,255);
  ellipse(400,1000,50,50);
  fill(0,255,0);
  ellipse(500,1000,50,50);
  fill(0,0,255);
  ellipse(600,1000,50,50);
  rand();
  z=line[0];
  x=line[1];
  n=line[2];
  v=line[3];
  b=line[4];
  print(z,x,n,v,b);
  fill(255);
  textSize(45);
  text("click to start",260,700);
 fill(255,255,0);
noStroke();
ellipse(400,400,200,200);
      }


void draw(){
  if(mousePressed){
        fill(200);
  textSize(45);
  text("click to start",260,700);;
        start = true;}

  if (timer.isFinished()) { 
  if (start==true){
  if(a<5){
      int c=line[a]-1;
  translate(400,400);
 
  angle=c*36;
  rotate(radians(angle));
  rectMode(CENTER);
  strokeWeight(10);
  stroke(linecolor[c][0],linecolor[c][1],linecolor[c][2]);
  line(-300,0,300,0);
  
  print(angle);
  a++;
  noStroke();
  fill(0,0,0);
  ellipse(0,0,20,20);
  timer.start(); 
  }
  }
  if(a==5){
    finish=true;

  }  
}

}


  
void mouseClicked(){
 translate(400,400);
  if (finish==true){ 
    if(q<5){
    if(mouseX>50+line[4-q]*100 && mouseX<150+line[4-q]*100 && mouseY>950 && mouseY<1050){
      fill(200);
noStroke();
ellipse(0,0,650,650);
fill(255,255,0);
noStroke();
ellipse(0,0,200,200);
  for(int a=0; a<(4-q);a++){
  int c=line[a]-1;
  rotate(radians(c*36-j));
  j=c*36;
  print(j);
  rectMode(CENTER);
  strokeWeight(10);
  stroke(linecolor[c][0],linecolor[c][1],linecolor[c][2]);
  line(-300,0,300,0);
  noStroke();
  fill(0,0,0);
  ellipse(0,0,20,20);
  if(a==3-q){
    j=0;
  }
}
       q++;
}

 else { 
   print(v);
   gameOverKey = true;
 showGameOver();
 } 
  }
  if(q==5){  
fill(200);
noStroke();
ellipse(0,0,200,200);
fill(255,255,0,20);
noStroke();
ellipse(0,0,200,200);
fill(255,255,0,30);
noStroke();
ellipse(0,25,200,200);
fill(255,255,0,40);
noStroke();
ellipse(0,75,200,200);
fill(255,255,0,80);
noStroke();
ellipse(0,175,200,200);
fill(255,255,0);
noStroke();
ellipse(0,375,200,200);
fill(250,25,25);
textAlign(CENTER); 
  textSize(45);
  text("WIN",0,400);
}
}
}


void showGameOver(){
    pushMatrix();
    background(0);  //black
    fill(255);  //white
    textAlign(CENTER);  //
    textSize(50);
    text("you lost", 0, 0);
    popMatrix();
}


class Timer { 
int savedTime; 
int totalTime; 
Timer(int tempTotalTime) { 
totalTime = tempTotalTime; 
} 
void start() { 
savedTime = millis(); 
} 
boolean isFinished() { 
int passedTime = millis()- savedTime; 
if (passedTime > totalTime) { 
return true; 
} else { 
return false; 
} 
} 

} 
