void intro() {
  intro1.play();
  background(0);
  textSize(200);
  fill (255);
  text("PONG", 30, 250);
  stroke(255);
  strokeWeight(4);
  tactilerect(50, 300, 200, 100); 
  rect(50, 300, 200, 100); 
  textSize(40);
  fill(0);
  text("2 players", 60, 350);
  fill (255);
  tactilerect(350, 300, 200, 100); 
  rect(350, 300, 200, 100); 
  textSize(40);
  fill(0);
  text("1 player", 370, 350);
}



void introclicks() {
  if (mouseX > 50 &&mouseX<250&&mouseY>300&&mouseY <400){
    mode = game;
  AI = false;
  intro1.pause();
  intro1.rewind();
  }
  if (mouseX > 350 &&mouseX<550&&mouseY>300&&mouseY <400){
    mode = game;
  AI = true;
  intro1.pause();
  intro1.rewind();
  }
}
