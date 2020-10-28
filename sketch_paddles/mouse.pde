void mouseReleased() {
  if (mode == intro) {
    introclicks();
  } else if (mode ==game) {
    gameclicks();
  } else if (mode == pause) {
    pauseclicks();
  } else if (mode == gameover) {
    gameoverclicks();
   } else if (mode == gameover1) {
    gameover1clicks();
   }
   
  } 
