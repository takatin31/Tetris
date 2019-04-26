class T extends Shape
{
    
    public T(int x, int y, int dir)
    {
        super(x, y, dir);
        this.fill = #0000ff;
        cubes[0] = new Cube(x, y, fill);
        cubes[1] = new Cube(x + Cube.sizeL, y, fill);
        cubes[2] = new Cube(x + 2*Cube.sizeL, y, fill);
        cubes[3] = new Cube(x + Cube.sizeL, y + Cube.sizeL, fill);
    }

    void turn()
    {
        
    }
}
