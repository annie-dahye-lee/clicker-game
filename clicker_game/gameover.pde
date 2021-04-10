void gameover() {
  theme.pause();
  gameover.play();

  background(background);

  mainMenuButton();

  textSize(100);
  fill(255, 0, 0);
  text("YOU LOST!", 400, 380);

  // try again
  tryAgainButton();

  textSize(42);
  fill(255);
  introTactileText(400, 520, 300, 80);
  text("try again?", 400, 520);

  // quit 
  strokeWeight(2);
  stroke(buttonOutline);
  fill(button);
  tactileQuit(0, 0, 0, 0);
  rect(400, 650, 150, 90, 20);

  textSize(42);
  fill(255);
  quitText(0, 0, 0, 0);
  text("quit", 400, 650);

  fill(0);
  textSize(50);
  text("High Score: " + highScore, 400, 220);
}

void gameoverClicks() {
  // main menu button
  if (mouseX > 0 && mouseX < 280 && mouseY > 20 && mouseY < 110) {
    theme.rewind();
    theme.play();
    mode = INTRO;
    lives = 3;
    score = 0;
    vx = 5;
    vy = 6;
  }

  // try again button
  if (mouseX > 300 && mouseX < 650 && mouseY > 300 && mouseY < 610) {
    lives = 3;
    score = 0;
    vx = 5;
    vy = 6;
    mode = GAME;
  }

  // quit button
  if (mouseX > 300 && mouseX < 500 && mouseY > 590 && mouseY < 700) {
    exit();
  }
}

void tryAgainButton() {
  strokeWeight(2);
  stroke(buttonOutline);
  fill(button);
  tactileTryAgain(400, 520, 250, 90);
  rect(400, 520, 250, 90, 20);
}

void mainMenuButton() {
  strokeWeight(2);
  stroke(buttonOutline);
  fill(button);
  tactileMainMenu(0, 0, 0, 0);
  rect(0, 20, 280, 90, 20);
  textSize(42);
  fill(255);
  backTactileText(0, 0, 0, 0);
  text("back", 70, 30);
}

void tactileTryAgain(int x, int y, int w, int h) {
  if (mouseX > 200 && mouseX < 600 && mouseY > 410 && mouseY < 580) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void tactileQuit(int x, int y, int w, int h) {
  if (mouseX > 300 && mouseX < 500 && mouseY > 590 && mouseY < 700) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void tactileMainMenu(int x, int y, int w, int h) {
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 90) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void backTactileText(int x, int y, int w, int h) {
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 90) {
    fill(0);
  } else {
    fill(255);
  }
}

void quitText(int x, int y, int w, int h) {
  if (mouseX > 300 && mouseX < 500 && mouseY > 590 && mouseY < 700) {
    fill(0);
  } else {
    fill(255);
  }
}
