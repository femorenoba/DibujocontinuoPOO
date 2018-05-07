

class Letsplay {
// 1. Attributes
  Node origin;
  Node end;
  float x1,x2,y1,y2;
  
//2. Constructor
  Letsplay (Node node1){
   origin = node1;
  }
  
    // 3. Methods

  void clicked(Node node1, Node node2){
    if(node1.pick(mouseX,mouseY)){
      stroke(255);
      strokeWeight(15);
      x1 = node1.position().x;
      y1 = node1.position().y;
      } node1=node2;
      if(node2.pick(mouseX,mouseY)){
      stroke(255);
      strokeWeight(15);
      x2 = node2.position().x;
      y2 = node2.position().y;
      } 
  }
  
  
  void display() {
    pushStyle();
    strokeWeight(10);
    stroke(255,0,0);
    line(x1, y1, x2, y2);
    popStyle();
  }
  
}
