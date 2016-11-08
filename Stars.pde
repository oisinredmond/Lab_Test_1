//Class for stars
class Stars
{
  int hab;
  String displayName;
  float distance;
  float[] coordinates;
  float size;
  
  Stars(String line)
  {
    String[] fields = line.split(",");
    hab = Integer.parseInt(fields[2]);
    displayName = fields[3];
    distance = Float.parseFloat(fields[12]);
    coordinates[0] = Float.parseFloat(fields[13]);
    coordinates[1] = Float.parseFloat(fields[14]);
    coordinates[2] = Float.parseFloat(fields[15]);
    size = Float.parseFloat(fields[16]);
  }
}
}