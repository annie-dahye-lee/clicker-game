void intro() {
  theme.play();

  background(background);

  // start button
  fill(button);
  introButtonTactile(400, 500, 400, 100);
  strokeWeight(2);
  stroke(buttonOutline);
  rect(400, 500, 400, 100, 10);

  introText();
  optionsButton();
}

void introText() {
  textAlign(CENTER, CENTER);
  fill(#F55A82);
  textSize(55);
  textFont(font);
  text("welcome to ", 400, 200);

  textSize(75);
  fill(#CE345A);
  text("the clicker game! ", 400, 290);

  textSize(75);
  fill(255);
  introTactileText(400, 500, 400, 100);
  text("START", 400, 500);
}

void introButtonTactile(int x, int y, int w, int h) {
  if (mouseX > 200 && mouseX < 600 && mouseY > 410 && mouseY < 580) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void introClicks() {
  if (mouseX > 200 && mouseX < 600 && mouseY > 410 && mouseY < 580) {
    mode = GAME;
    lives = 3;
    score = 0;
    vx = 5;
    vy = 6;
  } 
  if (mouseX > 100 && mouseX < 700 && mouseY > 560 && mouseY < 710) {
    mode = OPTIONS;
  }
}

void introTactileText(int x, int y, int w, int h) {
  if (mouseX > 200 && mouseX < 600 && mouseY > 410 && mouseY < 580) {
    fill(0);
  } else {
    fill(255);
  }
}
