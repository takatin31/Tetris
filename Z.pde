class Z extends Shape
{
    
    public Z(int x, int y, int dir)
    {
        super(x, y, dir);
        this.fill = #c0c0c0;
        cubes[0] = new Cube(x, y, fill);
        cubes[1] = new Cube(x + Cube.sizeL, y, fill);
        cubes[2] = new Cube(x + Cube.sizeL, y + Cube.sizeL, fill);
        cubes[3] = new Cube(x + 2*Cube.sizeL, y + Cube.sizeL, fill);
    }

    void turn()
    {
        
    }
}
