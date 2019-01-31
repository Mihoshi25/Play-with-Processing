// Setting up the class Cell
class Cell 
{
  // Fields
  int i;
  int j;
  // Setting boolean array for if the walls are in place and boolean for if a cell has been visited
  boolean[] walls = {true, true, true, true};
  boolean visited = false;
  
  // Constructor taking the fields set above
  Cell(int i, int j) 
  {
    this.i = i;
    this.j = j;
  }
  // Methods
  // Method with return type Cell 
  Cell checkNeighbors() 
  {
    ArrayList<Cell> neighbors = new ArrayList<Cell>();
    // Give directions to neighboring cells
    Cell top    = grid.get(index(i, j-1));
    Cell right  = grid.get(index(i+1, j));
    Cell bottom = grid.get(index(i, j+1));
    Cell left   = grid.get(index(i-1, j));
    // If said neighbor cell has not been visited, add it to cells that can be visited
    if (top != null && !top.visited) {
      neighbors.add(top);
    }
    if (right != null && !right.visited) 
    {
      neighbors.add(right);
    }
    if (bottom != null && !bottom.visited) 
    {
      neighbors.add(bottom);
    }
    if (left != null && !left.visited) 
    {
      neighbors.add(left);
    }
    // If any neighbors are available, visit a random one of these
    if (neighbors.size() > 0) 
    {
      int r = floor(random(0, neighbors.size()));
      return neighbors.get(r);
    } else {
      return null;
    }
  }
  
  /*void highlight() 
  {
    int x = this.i*w;
    int y = this.j*w;
    noStroke();
    fill(0, 0, 255, 100);
    rect(x, y, w, w);

  }*/
  // Method which draws the walls of the maze
  void show() 
  {
    int x = this.i*w;
    int y = this.j*w;
    stroke(255);
    if (this.walls[0]) 
    {
      line(x    , y    , x + w, y);
    }
    if (this.walls[1]) 
    {
      line(x + w, y    , x + w, y + w);
    }
    if (this.walls[2]) 
    {
      line(x + w, y + w, x    , y + w);
    }
    if (this.walls[3]) 
    {
      line(x    , y + w, x    , y);
    }

    if (this.visited) 
    {
      noStroke();
      fill(255, 0, 255, 100);
      rect(x, y, w, w);
    }
  }
}
