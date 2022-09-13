int moduleColor;
int maxDistance = 400;

void setup() {
  size(1040, 980, P3D);
  noCursor();
  smooth();
}

void draw() {
  background(0);
  noLights();
  for (int gridY = 0; gridY < width; gridY += 28) {
    for (int gridX = 0; gridX < height; gridX += 28) {
      float diameter = dist(mouseX, mouseY, gridX, gridY)/ maxDistance * 28;
      pushMatrix();
      translate(gridX, gridY, diameter * 5);
      moduleColor = color(random(255), random(200,255), random(200,255));
      noStroke();
      fill(moduleColor, random(200,255));
      // rect(gridX, gridY, diameter, diameter);
      ellipse(gridX, gridY, diameter, diameter); 
      popMatrix();
    }
  }
  // fade();
}
void fade() {
    //--------- Fade
    strokeWeight(0);
    noStroke();
    fill(0, 5);
    ellipse(0, 0, stageW, stageH);
    //----------------------------------------------------
}
