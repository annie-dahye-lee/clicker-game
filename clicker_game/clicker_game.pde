// Annie Lee
// 1-4B
// The Clicker Game

// minim library =====================================
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// minim library end =====================================

// variables =====================================

// mode framework variables
int mode; // keeps track of what screen you're in
// final/constant int modes
final int INTRO = 0; 
final int OPTIONS  = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

// target variables
float x, y, d;
float vx, vy; // target velocities
int score, lives;

float sliderX;
float size;

int highScore;

//color pallete
color background = #FFC7E4;
color button = #F57ABA;
color buttonOutline = #EF218C;
color tactileButton = #FDD456;
color red = #FF0000;
color selectedColor;

PFont font;

PImage dog;
PImage cat;
PImage fox;

boolean dogOn;
boolean catOn;
boolean foxOn;

PImage selectedTarget;
// sound variables
Minim minim;
AudioPlayer theme, point, losePoint, gameover;
// variables end =====================================

void setup() { // setup ==========================
  size(800, 800);
  mode = INTRO;
  rectMode(CENTER);

  // target initialization
  x = width/2; // places in center by dividing width and height of window by 2
  y = height/2;  
  d = random(90, 200);
  vx = 5;
  vy = 6;

  score = 0;
  lives = 3;

  highScore = 0;

  font = createFont("balonku-font.otf", 50);

  dog = loadImage("dog.png");
  cat = loadImage("cat.png");
  fox = loadImage("fox.png");

  sliderX = 170;
  size = 70;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mov");
  point = minim.loadFile("point.mov");
  losePoint = minim.loadFile("losePoint.mov");
  gameover = minim.loadFile("gameover.mov");
} // setup end ===================================

void draw() { // draw ============================
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) { 
    pauseScreen();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode); // error checking through printing in console
  }
} // draw end ====================================
