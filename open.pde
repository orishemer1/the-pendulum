

String s1,s2;
PFont f;
int move1,base1,move2,base2;
PImage img1,img2,img3,img4,img5,back;
color opening_background = color(4,4,68);

void setup_open() {
  music.loop();
  f = createFont("Mandatory47.otf",1000);
  textFont(f);
  textAlign(CENTER);
  background(opening_background);
  move1 = 1;
  move2 = 1;
  base1 = 0;
  base2 = 2;
  frameRate(500);
  back = loadImage("back.png");
  img1 = loadImage("c1.png");
  img2 = loadImage("c2.png");
  img3 = loadImage("c3.png");
  img4 = loadImage("c4.png");
  img5 = loadImage("c3.png");

}

void draw_open(){

  //background(238,232,200,500);
  background(opening_background);
  fill(255,255,255);
  image(back,-100,0,1200, 1200);
  image(img1,400+base1,500+base2,100, 100);
  s1 = "Lets draw";
  textSize(200);
  text(s1,258,500);
  s2 = "somthing amazing!";
  text(s2,400,700);
  image(img2,360+base2,520-base2,100, 100);
  image(img3,1200-base1,600+base1,400, 400);
  image(img5,1300-base2,500+base2/6,300, 300);
  image(img4,800,750+base2,100, 100);
  base1 += move1;
  base2 += move2 ;
  if (base1 > 150 || base1 < 0 ){
  move1 *= -1;
  }
  if (base2 > 180 || base2 < -20 ){
  move2 *= -1;
  }
  
}
