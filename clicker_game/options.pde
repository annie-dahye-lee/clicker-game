PImage selectedButton;

void options() {
  background(background);

  textAlign(CENTER, CENTER);
  textSize(60);
  fill(#CE345A);
  text("OPTIONS", 400, 150);

  controlSlider();
  targetButtons();
  saveButton();
}

void targetButtons() {
  dogOn();
  fill(255);
  noStroke();
  stampsTactile(160, 400, 100);
  circle(160, 400, 200);
  imageMode(CENTER);
  image(dog, 165, 400, 170, 120);

  catOn();
  fill(255);
  noStroke();
  stampsTactile(400, 400, 100);
  circle(400, 400, 200);
  image(cat, 400, 400, 160, 120);

  foxOn();
  fill(255);
  noStroke();
  stampsTactile(650, 400, 100);
  circle(650, 400, 200);
  image(fox, 650, 400, 150, 120);
}

void controlSlider() {
  strokeWeight(5);
  stroke(button);
  line(150, 650, 450, 650);

  stroke(buttonOutline);
  fill(buttonOutline);
  circle(sliderX, 650, 50);

  size = map(sliderX, 0, 300, 100, 180);
}

void mouseDragged() {
  if (mouseX > 170 && mouseX < 450 && mouseY > 600 && mouseY < 700) {
    sliderX = mouseX; // move circle to mouse
  }
}

void optionsClicks() {
}

void optionsButton() {
  // options button
  fill(button);
  optionsButtonTactile(400, 630, 300, 80);
  strokeWeight(2);
  rect(400, 630, 300, 80, 10);

  optionsText();
}

void optionsButtonTactile(int x, int y, int w, int h) {
  if (mouseX > 230 && mouseX < 550 && mouseY > 580 && mouseY < 670) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void stampsTactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    strokeWeight(4);
    stroke(button);
  } else {
    stroke(255);
  }
}

void optionsText() {
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255);
  optionsTactileText(400, 630, 300, 80);
  text("OPTIONS", 400, 630);
}

void optionsTactileText(int x, int y, int w, int h) {
  if (mouseX > 230 && mouseX < 550 && mouseY > 580 && mouseY < 670) {
    fill(0);
  } else {
    fill(255);
  }
}

void mousePressed() {
  if (dist(160, 400, mouseX, mouseY) < 100) {
    dogOn = true;
    catOn = false;
    foxOn = false;
  } 

  if (dist(400, 400, mouseX, mouseY) < 100) { 
    catOn = true;
    foxOn = false;
    dogOn = false;
  }

  if (dist(650, 400, mouseX, mouseY) < 100) { 
    foxOn = true;
    catOn = false;
    dogOn = false;
  }
  if (mouseX > 0 && mouseX < 220 && mouseY > 00 && mouseY < 110) {
    mode = INTRO;
  }
}

void dogOn() {
  if (dogOn == true) {
    imageMode(CENTER);
    image(dog, 640, 650, size+50, size);
    selectedTarget = dog;
    d = size + 50;
  }
}

void catOn() {
  if (catOn == true) {
    image(cat, 640, 650, size+50, size);
    selectedTarget = cat;
    d = size + 50;
  }
}

void foxOn() {
  if (foxOn == true) {
    image(fox, 640, 650, size+40, size);
    selectedTarget = fox;
    d = size + 60;
  }
}

void tactileSave(int x, int y, int w, int h) {
  if (mouseX > 10 && mouseX < 200 && mouseY > 0 && mouseY < 80) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void saveTactileText(int x, int y, int w, int h) {
  if (mouseX > 10 && mouseX < 200 && mouseY > 00 && mouseY < 80) {
    fill(0);
  } else {
    fill(255);
  }
}

void saveButton() {
  fill(button);
  tactileSave(0, 0, 0, 0);
  strokeWeight(2);
  stroke(buttonOutline);
  rect(80, 10, 140, 100, 10);

  textAlign(CENTER, CENTER);
  fill(255);
  saveTactileText(0, 0, 0, 0);
  textSize(20);
  textFont(font);
  text("save", 80, 25);
}
