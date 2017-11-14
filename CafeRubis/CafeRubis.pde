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
    println(p.name);
   }  
   for(Product b:bill)
   {
   println(b.price);
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
    textAlign(CENTER);
    //stroke(255);
    fill(50);

    text(p.name + "       " + p.price, x, y+=50);
    i++;
    }
  }
}
void draw(){
  //drawtill();
  drawmenu();
}