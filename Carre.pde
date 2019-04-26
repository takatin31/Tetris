class Carre extends Shape
{
    
    public Carre(int x, int y, int dir)
    {
        super(x, y, dir);
        this.fill = #804040;
        cubes[0] = new Cube(x, y, fill);
        cubes[1] = new Cube(x + Cube.sizeL, y, fill);
        cubes[2] = new Cube(x, y + Cube.sizeL, fill);
        cubes[3] = new Cube(x + Cube.sizeL, y + Cube.sizeL, fill);
    }
}
