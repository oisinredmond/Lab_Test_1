//Oisin Redmond - C15492202
//Lab Test - 08/11/2016
float border;
ArrayList<Stars> data = new ArrayList<Stars>(); //ArrayList for Stars

void setup()
{
  size(500,500);
  background(0);
  border = width * 0.1; //Setting border width
  loadData();//Calling loadData
}


void loadData()
{
  Table t  = loadTable("HabHYG15ly.csv");
  for(int row = 0; row < t.getRowCount(); row++)
  {
    Stars star = new Stars(t.getString(row,0));
    data.add(star);
  }
} 

void printStars()
{
  for(int i=0;i<data.size();i++)
  {
    Stars e = data.get(i);
    println(e);
  }
  for(Stars e:data)
  {
    println(e);
  }
}


//Drawing stars
void drawStars()
{
  for(int i = 1; i < data.size();i++)
  {
    stroke(255,234,0);
    float x = data.get(i).coordinates[0]; //Star x coordinate
    float y = data.get(i).coordinates[1]; //Star y coordinate
    float radius = 0.5 *(data.get(i).size);
    
    //Drawing circle around star
    rectMode(RADIUS);
    rect(x,y,radius,2);
    rect(x,y,2,radius);
    stroke(255,0,0);
    ellipse(x,y,radius,radius);
    
    //Drawing text beside star
    textAlign(LEFT,CENTER);
    text(data.get(i).displayname,x -5,y+5);
    
  }
/* Mouse Pressed function. Incomplete
mousePressed()
{
  {
    stroke(0,255,255);
    float limitx1 = data.get(i).coordinates[0] +5;
    float limitx2 = data.get(i).coordinates[0] -5;
    float limity1 = data.get(i).coordinates[1] +5;
    float limity2 = data.get(i).coordinates[1] -5;
    float x = mouseX;
    float y = mouseY;
    if(mouseX < limitx1 && mouseX > limitx2 && mouseY < limity1 && mouseY > limity2)
    {
      line(
    }
  }
}
*/


void draw()
{
   int i;
   //gap pushes line past the previously drawn lines
   float gap = (float) width / data.size();

  //Drawing grid lines
   for(i = 0; i <10; i++)
   {
     stroke(255,0,255);
     line(border + (gap *i),height -border,border + (gap*i),height);
     line(border, (height - border) + (gap*i),width - border, border);
   }
   //Drawing grid line labels
   for(i = -5;i<5;i++)
   {
     stroke(255,0,255);
     text(i, border + (gap *i),height -border);
     text(i, border, (height - border) + (gap*i));
   }
   
   drawStars();
}