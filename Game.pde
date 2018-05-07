/**
 Para cambiar el 'nivel' presione cualquier tecla
 */

Graph[] levels;
// total, current por defecto vale 0
int total, current;
int[]lineas=new int [4];
int aux=0;

void setup() {
  size(600, 600);
  // numero total de niveles
  total = 5;
  levels = new Graph[total];
  for (int i = 0; i < levels.length; i++)
    levels[0] = new Graph("nodeslvl0.csv", "Connectlvl0.csv");
    levels[1] = new Graph("nodeslvl1.csv", "Connectlvl1.csv");
    levels[2] = new Graph("nodeslvl2.csv", "Connectlvl2.csv");
    levels[3] = new Graph("nodeslvl3.csv", "Connectlvl3.csv");
    levels[4] = new Graph("nodeslvl4.csv", "Connectlvl4.csv");
    
}

void draw() {
  background(0, 0, 0);
  levels[current].display();
}

void keyPressed() {
  current = current < total-1 ? current+1 : 0;
}
@Override

void mouseClicked(){
  
}
