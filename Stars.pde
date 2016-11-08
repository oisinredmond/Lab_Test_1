//Class for stars
class Stars
{
  int hab;
  String displayName;
  float distance;
  float[] coordinates;
  float size;
  
  Stars(TableRow line)
  {
    String[] star = line.split(",");
    hab = Integer.parseInt(star[2]);
    displayName = star[3];
    Distance = Float.parseFloat(star[12]);
    coordinates[0] = Float.parseFloat(star[13]);
    coordinates[1] = Float.parseFloat(star[14]);
    coordinates[2] = Float.parseFloat(star[15]);
    size = Float.parseFloat(star[16]);
  }
}