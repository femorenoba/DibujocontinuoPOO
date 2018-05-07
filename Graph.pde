/**
 Un grafo esta compuesto de un conjunto de nodos
 y un conjunto de lineas.
 */

class Graph {
  // 1. Attributes 
  
  Node[] nodes;
  Line[] lines;
  Letsplay[] unions;
  
  Table tableNodes;
  Table tableConnect;
  Table tableComparar;
  
 
  // 2. Constructors
  // 2.1. Default in this case dummy constructor
  
  Graph() {
    
    for (int i = 0; i < nodes.length; i++)
      nodes[i] = i<5 ? new Circle() : new Rectangle();
    // conecta todos los nodos en bucle
    
    for (int i = 0; i < lines.length; i++)
        lines[i] = new GuideLines(nodes[i], nodes[i]);
  }

  // 2.2. Main constructor
  // file es un archico csv ubicado en la carpeta
  // data del sketch. Implemente este constructor
  // empleando Table (https://processing.org/reference/Table.html)
  Graph(String file, String file2) {
    
   tableNodes = loadTable(file, "header");
   nodes = new Node[tableNodes.getRowCount()];
   

   for (int i= 0 ; i < tableNodes.getRowCount(); i++){
    TableRow row = tableNodes.getRow(i);
    float x = row.getInt("x");
    float y = row.getInt("y");
    nodes[i] = i<5 ? new Circle(new PVector(x,y), float (35)): new Rectangle(new PVector(x,y),float(35));
    }
    
    
    tableConnect= loadTable(file2);
    int count=0;
    for (int i=0; i<tableConnect.getRowCount(); i++) {  
     for (int j=0; j<tableConnect.getRowCount(); j++) {
       float a= tableConnect.getFloat(i, j);
        if (a==1) {
        count++; }
      }}

    lines = new Line[count];
    int x=-1;
    for(int i=0;i<tableConnect.getRowCount();i++){
     for(int j=0;j< tableConnect.getRowCount();j++){
      if(tableConnect.getFloat(i, j)==1){
     x++;
     lines[x]= new GuideLines(nodes[i], nodes[j]);
      }}
    }
    
    unions = new Letsplay[count];
      for(int i = 0; i < nodes.length;i++){     
     unions[i] = new Letsplay(nodes[i]);
   }
  
  
}

  void display() {
    
   for (int i = 0; i < nodes.length; i++)
      nodes[i].display();
      
    for (int i = 0; i < lines.length; i++)
      lines[i].display();
 
  for (int i = 0; i < nodes.length; i++){
   for (int j = 0; j < nodes.length; j++){
      if(mousePressed == true){
      unions[i].clicked(nodes[i],nodes[j]);
      
      }
      unions[i].display();
   }
    }
 /*boolean comparar(Graph otroGrafo){ 
   return false;
  }*/
}
}
