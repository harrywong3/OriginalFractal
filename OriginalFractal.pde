void setup(){
  size(600,650);
  background(255);
}
void draw(){
  fill(color(225,255,0));
  strokeWeight(1);
  circle(300,300,600);
  wowCool(0,300,150,25);
}
public void wowCool(float angle, int size, int far, int stop){
  if(stop==0){
    fill(0);
    text("Wow so cool. Much nice. Very super.",200,620);
  }
  else {
    if(stop%2==1)fill(color(255,17,0));
    if(stop%2==0)fill(color(225,255,30));
      circle(300+far*cos(angle),300+far*sin(angle),size);
      circle(300+far*sin(angle),300+far*cos(angle),size);
      circle(300-far*cos(angle),300-far*sin(angle),size);
      circle(300-far*sin(angle),300-far*cos(angle),size);
    wowCool(angle-PI/6,9*size/10,far-6,stop-1);
  }
}
