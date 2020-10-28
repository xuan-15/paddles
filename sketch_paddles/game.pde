void game() {
  intro1.pause();
  theme.play();
  background(0);
  //paddles 
  circle(lx, ly, ld);
  circle(rx, ry, rd);

  //paddles move
  if (wkey ==true) ly=ly-5;
  if (skey ==true) ly = ly+5;
  if (AI ==false) {
    if (upkey ==true) ry = ry-5; 
    if (downkey ==true) ry = ry+ 5;
  } else {
    ry = by;
  }
  //center line
  strokeWeight(5);
  stroke(orange);
  line(width/2, 0, width/2, height);



  //socreboard
  textSize(50);
  fill(orange);
  text(ls, width/4, 100);
  fill(bleu);
  text(rs, 3*width/4, 100);
  // text(timer,3*width/4 , 500);
  timer = timer -1;

  if (ls ==3) {
    mode = gameover;
  }
  if (rs == 3) {
    mode = gameover1;
  }


  //balls
  circle(bx, by, bd);

  //moving
  if (timer <0) {
    bx = bx+ vx;
    by = by + vy;
  }
  //scoring
  if (bx<0) {
    rs ++;
    bx = width/2;
    by = height/2;
    timer = 100;
    score.rewind();
    score.play();
  }
  if (bx>600) {
    ls ++;
    bx = width/2;
    by = height/2;
    timer = 100;
    score.rewind();
    score.play();
  }



  //bounce
  if (by< 50|| by >height- 50) {
    vy = vy* -1;
    wall.rewind();
    wall.play();
  }

  if (dist(bx, by, lx, ly)<= bd/2+ld/2) {
    vx = (bx - lx)/20;
    vy = (by - ly)/20;
    wall.play();
  }
  if (dist(bx, by, rx, ry)<= bd/2+ld/2) {
    vx = (bx - rx)/20;
    vy = (by - rx)/20;
    wall.play();
  }
  if (ly<100) {
    ly = 100;
  }
  if (ly>500) {
    ly = 500;
  }
  if (ry>500) {
    ry = 500;
  }
  if (ry<100) {
    ry = 100;
  }


  if (by<50) {
    by = 50;
  }
  if (by>550) {
    by = 550;
  }
}








void gameclicks() {
  if (mouseX>0&&mouseX<600&&mouseY>0&&mouseY<600) {
    mode = pause;
  }
}
