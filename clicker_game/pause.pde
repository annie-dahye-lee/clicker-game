void pauseScreen() {
  theme.pause();

  // pause button
  background(background);
  fill(255);
  stroke(0);
  rect(340, 400, 55, 380, 20);
  rect(460, 400, 55, 380, 20);

  // instructions
  textAlign(CENTER, CENTER);
  fill(buttonOutline);
  textFont(font);
  text("click anywhere to resume", 400, 150);
} 


void pauseClicks() {
  mode = GAME;
}
