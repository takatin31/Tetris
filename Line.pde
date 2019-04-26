class Line extends Shape
{
    
    public Line(int x, int y, int dir)
    {
        super(x, y, dir);
        this.fill = #804000;
        cubes[0] = new Cube(x, y, fill);
        cubes[1] = new Cube(x + Cube.sizeL, y, fill);
        cubes[2] = new Cube(x + 2*Cube.sizeL, y, fill);
        cubes[3] = new Cube(x + 3*Cube.sizeL, y, fill);
    }

    void turn()
    {
        
    }
}
