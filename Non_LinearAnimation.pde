// Non-Linear Animation
// Non-linear Animation with math and normallized time
// 02/09/2022
// https://github.com/Parsa-S/Non-Linear_Animation/blob/main/Non_LinearAnimation.pde


float start, end, i, j, k, l, m, n, o, p;

void setup() {
  size(1120, 600);
  start = 0;
  end = 3000;
  k = millis();
}

void draw() {
  background(83, 82, 78);
  
  // Formulas
  k = (millis() % end) / end;
  l = abs(cos(k * PI) - 1) / 2;
  m = sin(k * (PI / 2));
  n = cos(k * (PI / 2) + PI) + 1;  
  o = (cos(k * 2 * PI + PI) + 1) / 2;
  p = abs(sin(k * PI));  

  // Lines
  strokeWeight(2);
  fill(69, 115, 131);
  stroke(69, 115, 131);
  for (int why = 2; why < 8; why++) {
    line(0, height / 8 * why, width, height / 8 * why);
  }
  
  // Dots
  fill(206, 188, 168);
  stroke(206, 188, 168);
  ellipse(k * width, height / 8 * 2, 10, 10);
  ellipse(l * width, height / 8 * 3, 10, 10);
  ellipse(m * width, height / 8 * 4, 10, 10);
  ellipse(n * width, height / 8 * 5, 10, 10);
  ellipse(o * width, height / 8 * 6, 10, 10);
  ellipse(p * width, height / 8 * 7, 10, 10);
  
  fill(69, 115, 131);
  stroke(69, 115, 131);
  textSize(50);
  text("NON-LINEAR ANIMATION", width / 4, 100);
  
  fill(200);
  stroke(200);
  textSize(20);
  text("t", 20, height / 8 * 2 - 10);
  text("abs(cos(t*2PI)-1)/2", 20, height / 8 * 3 - 10);
  text("(cos(t*PI+PI)+1)/2", 20, height / 8 * 4 - 10);
  text("sin(t*(PI/2))", 20, height / 8 * 5 - 10);
  text("cos(t*(PI/2)+PI)+1", 20, height / 8 * 6 - 10);
  text("abs(sin(t*PI))", 20, height / 8 * 7 - 10);
}
