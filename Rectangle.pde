public class Rectangle extends Node {
  
  @Override
  void display() {
    pushStyle();
    rectMode(CENTER);
    strokeWeight(5);
    stroke(255, 20, 147);
    fill(255, 255, 0);
    if (pick(mouseX, mouseY)) {
      stroke(255, 255, 0);
      fill(255, 20, 147);
    }
    rect(position.x, position.y, size, size);
    popStyle();
  }

  @Override
  boolean pick(int x, int y) {
    return abs(x-position().x) <= size()/2 && abs(y-position().y) <= size()/2;
    }
 public Rectangle(PVector p, Float s){
  super(p,s);
}
public Rectangle(){
  super();
}}
