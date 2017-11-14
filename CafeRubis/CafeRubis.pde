/*Student Name:  Peter Hand
  Student Number:C16769411*/
  
  void setup(){
   size(800, 600); 
   loadData();
   printProducts();
  }
  
  float x = width;
  float y = height;
  float x2 = 200;
  
  void loadData()
  {
   Table table = loadTable("cafe.csv", "header");
   
   for(TableRow p:table.rows())
   {
     Product product = new Product(p);
     products.add(product);
   }
  }
  
  void printProducts()
  {
   for(Product p:products)
   {
    println(p.name + p.price);
   }  

   
  }
  
  ArrayList<Product> products = new ArrayList<Product>();
  ArrayList<Product> bill = new ArrayList<Product>();
  
void drawtill(){
  
  
  
}
    int i = 0;
void drawmenu(){

  for(Product p:products){

    if(i < 7){
    textAlign(CENTER, LEFT);
    //stroke(255);
    fill(255);
    rect(100,y+=20,155,55);
    fill(50);
    text(p.name + "       " + p.price, 180, y+=50);
    i++;
    }
  }
}
void draw(){
  //drawtill();
  drawmenu();
  textSize(20);
  textAlign(CENTER, BOTTOM);
  text("Cafe Rubis Till System", 400, 30);
  line(400,40,400,560);
}