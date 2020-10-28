void pause () {
  theme.pause();
  fill(orange);
  textSize(200);
  text("PAUSE", 0, 300);
}

void pauseclicks() {
  if (mouseX>0&&mouseX<600&&mouseY>0&&mouseY<600) {
    mode = game;
    theme.play();
    }
 
}
