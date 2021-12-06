void beatData(){
  if(beat1 == true){
    fill(255, 77, 77);
    ellipse(150, 380, 20, 15);
    if(time == 150) tap.play();
    if(time - 1 == 150) tap.play();
  }
  if(beat2 == true){
    fill(255, 163, 77);
    ellipse(150, 400, 20, 15);
    ellipse(400, 400, 20, 15);
    if(time == 150 || time == 400) tap.play();
    if(time - 1 == 150 || time - 1 == 400) tap.play();
  }
  if(beat3 == true){
    fill(255, 255, 106);
    ellipse(150, 420, 20, 15);
    ellipse(316, 420, 20, 15);
    ellipse(483, 420, 20, 15);
    if(time == 150 || time == 316 || time == 483) tap.play();
    if(time - 1 == 150 || time - 1 == 316 || time - 1 == 483) tap.play();
  }
  if(beat4 == true){
    fill(185, 255, 106);
    ellipse(150, 440, 20, 15);
    ellipse(275, 440, 20, 15);
    ellipse(400, 440, 20, 15);
    ellipse(525, 440, 20, 15);
    if(time == 150 || time == 275 || time == 400 || time == 525) tap.play();
    if(time - 1 == 150 || time - 1 == 275 || time - 1 == 400 || time - 1 == 525) tap.play();
  }
  if(beat5 == true){
    fill(77, 255, 111);
    ellipse(150, 460, 20, 15);
    ellipse(250, 460, 20, 15);
    ellipse(350, 460, 20, 15);
    ellipse(450, 460, 20, 15);
    ellipse(550, 460, 20, 15);
    if(time == 150 || time == 250 || time == 350 || time == 450 || time == 550) tap.play();
    if(time == 150 - 1 || time - 1 == 250 || time - 1 == 350 || time - 1 == 450 || time - 1 == 550) tap.play();
  }
  if(beat6 == true){
    fill(77, 248, 255);
    ellipse(150, 480, 20, 15);
    ellipse(233, 480, 20, 15);
    ellipse(316, 480, 20, 15);
    ellipse(400, 480, 20, 15);
    ellipse(483, 480, 20, 15);
    ellipse(566, 480, 20, 15);
    if(time == 150 || time == 233 || time == 316 || time == 400 || time == 483 || time == 566) tap.play();
    if(time - 1 == 150 || time - 1 == 233 || time - 1 == 316 || time - 1 == 400 || time - 1 == 483 || time - 1 == 566) tap.play();
  }
  if(beat7 == true){
    fill(93, 148, 255);
    ellipse(150, 500, 20, 15);
    ellipse(221, 500, 20, 15);
    ellipse(292, 500, 20, 15);
    ellipse(364, 500, 20, 15);
    ellipse(435, 500, 20, 15);
    ellipse(507, 500, 20, 15);
    ellipse(578, 500, 20, 15);
    if(time == 150 || time == 221 || time == 292 || time == 364 || time == 435 || time == 507 || time == 578) tap.play();
    if(time - 1 == 150 || time - 1 == 221 || time - 1 == 292 || time - 1 == 364 || time - 1 == 435 || time - 1 == 507 || time - 1 == 578) tap.play();
  }
  if(beat8 == true){
    fill(124, 77, 255);
    ellipse(150, 520, 20, 15);
    ellipse(212, 520, 20, 15);
    ellipse(275, 520, 20, 15);
    ellipse(337, 520, 20, 15);
    ellipse(400, 520, 20, 15);
    ellipse(462, 520, 20, 15);
    ellipse(525, 520, 20, 15);
    ellipse(587, 520, 20, 15);
    if(time == 150 || time == 212 || time == 275 || time == 337 || time == 400 || time == 462 || time == 520 || time == 587) tap.play();
    if(time - 1 == 150 || time - 1 == 212 || time - 1 == 275 || time - 1 == 337 || time - 1 == 400 || time - 1 == 462 || time - 1 == 520 || time - 1 == 587) tap.play();
  }
  if(beat9 == true){
    fill(221, 54, 255);
    ellipse(150, 540, 20, 15);
    ellipse(205, 540, 20, 15);
    ellipse(261, 540, 20, 15);
    ellipse(316, 540, 20, 15);
    ellipse(372, 540, 20, 15);
    ellipse(427, 540, 20, 15);
    ellipse(483, 540, 20, 15);
    ellipse(538, 540, 20, 15);
    ellipse(594, 540, 20, 15);
    if(time == 150 || time == 205 || time == 261 || time == 316 || time == 372 || time == 427 || time == 483 || time == 538 || time == 594) tap.play();
    if(time - 1 == 150 || time - 1 == 205 || time - 1 == 261 || time - 1 == 316 || time - 1 == 372 || time - 1 == 427 || time - 1 == 483 || time - 1 == 538 || time - 1 == 594) tap.play();
  }
  if(beat10 == true){
    fill(253, 175, 255);
    ellipse(150, 560, 20, 15);
    ellipse(200, 560, 20, 15);
    ellipse(250, 560, 20, 15);
    ellipse(300, 560, 20, 15);
    ellipse(350, 560, 20, 15);
    ellipse(400, 560, 20, 15);
    ellipse(450, 560, 20, 15);
    ellipse(500, 560, 20, 15);
    ellipse(550, 560, 20, 15);
    ellipse(600, 560, 20, 15);
    if(time == 150 || time == 200 || time == 250 || time == 300 || time == 350 || time == 400 || time == 450 || time == 500 || time == 550 || time == 600) tap.play();
    if(time - 1 == 150 || time - 1 == 200 || time - 1 == 250 || time - 1 == 300 || time - 1 == 350 || time - 1 == 400 || time - 1 == 450 || time - 1 == 500 || time - 1 == 550 || time - 1 == 600) tap.play();
  }
}
