class WallClass
{
 // Fields
 int wallX;
 int wallY;
 int wallWidth = 10;
 int wallLength;
 
 // Constructor
 WallClass()
 {
 
 }
 // Methods
 void drawWall()
 {
   fill(255);
   rect(wallX, wallY, wallWidth, wallLength);
 }
}
