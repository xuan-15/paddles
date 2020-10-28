//pong
//xuan zhou
//oct 14
//mode variables

//sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, score, rp, lp, clapping, wall, intro1;

color orange = #FFA703;
color bleu = #03F4FF;

int mode;
final int intro = 1;
final int game = 2;
final int pause =3;
final int gameover = 4;
final int gameover1 = 5;

//entity variables
float lx, ly, ld, rx, ry, rd;//paddles
float bx, by, bd;
float vx, vy;
float d, r, r1, R;
//keyboard variables
boolean wkey, skey, upkey, downkey;

//Ai
boolean AI;
//socring
int ls, rs, timer;

void setup() {//================================
  size (600, 600);
  mode = intro;
  //paddles
  lx = 0;
  ly = height/2;
  ld = 200;
  rx = width;
  ry = height/2;
  rd =200;
  //balls
  bx = width/2;
  by = height/2;
  bd = 100;
  vx = random(-5, 5);
  vy =  random(-5, 5);
  d = r+R;
  R = bd/2;
  r= ld/2;
  r1 = rd/2;
  ls = 0;
  rs = 0;
  timer = 100;

  //initialize key
  wkey=skey=upkey=downkey=false;


  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  wall = minim.loadFile("wall.wav");
  rp = minim.loadFile("rightpaddle.wav");
  lp = minim.loadFile("leftpddle.wav");
  score = minim.loadFile("score.wav");
  clapping = minim.loadFile("clapping.wav");
  intro1 = minim.loadFile("intro.wav");
}//=================================


void draw() {//==========================
  if (mode == intro) {
    intro();
  } else if (mode ==game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == gameover1) {
    gameover1();
  } else {
    println("mode error:"+mode);
  }
}//======================================


void tactilerect(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    stroke(orange);
  } else {
    stroke(0);
  }
}

void tactile(float x, int y, int r) {//==========================
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(orange);
  } else {
    stroke(0);
  }
}//============================
