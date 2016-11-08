//Oisin Redmond - C15492202
//Lab Test - 08/11/2016
float border;
ArrayList<Stars> data = new ArrayList<Stars>();

void setup()
{
  size(500,500);
  loadData();
  border = width * 0.1;
}


void loadData()
{
  Table t  = loadTable("HabHYG15ly.csv");
  for(int row = 0; row < t.getRowCount(); row++)
  {
    Stars star = new Stars(t.getString(row,0);
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

void draw()
{
   int i;
   float gap = (float) width / data.size();

   for(i = 0; i <10; i++)
   {
     line(border,height -border,border,height);
   

}