void game() {
  theme.play();
  background(background);

  // moving the ball
  x = x + vx;
  y = y + vy;

  // bouncing the ball
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }

  pauseButton();
  target();
  gameText();
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score += 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    point.rewind();
    point.play();
  } else if (mouseX > 600 && mouseX < 780 && mouseY > 0 && mouseY < 70) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    losePoint.rewind();
    losePoint.play();

    if (lives == 0) {
      mode = GAMEOVER;
      gameover.play();
      vx = 5;
      vy = 6;
      lives = 3;
      score = 0;
    }
  }
  if (score > highScore) {
    highScore = score;
  }
}

void pauseButton() {
  fill(button);
  pauseTactile(0, 0, 0, 0);
  strokeWeight(2);
  stroke(buttonOutline);
  rect(700, 10, 180, 100, 10);

  textAlign(CENTER, CENTER);
  fill(255);
  pauseTextTactile(700, 10, 180, 100);
  textSize(10);
  textFont(font);
  text("pause", 700, 25);
}

void pauseTactile(int x, int y, int w, int h) {
  if (mouseX > 600 && mouseX < 790 && mouseY > 0 && mouseY < 70) {
    fill(tactileButton);
  } else {
    fill(button);
  }
}

void pauseTextTactile(int x, int y, int w, int h) {
  if (mouseX > 600 && mouseX < 790 && mouseY > 0 && mouseY < 70) {
    fill(0);
  } else {
    fill(255);
  }
}

void target() {
  // display target
  fill(255);
  strokeWeight(4);
  stroke(0);
  if (selectedTarget == null) {
    circle(x, y, d);
  } else {
    circle(x, y, d);
    imageMode(CENTER);
    image(selectedTarget, x, y, size+20, size); // target  , size+450, size+330
    imageMode(CORNER);
  }
}

void gameText() {
  fill(0);
  textFont(font);
  textSize(40);
  text("Score: " + score, 100, 40);
  text("Lives: " + lives, 100, 90);
}
