class L extends Shape
{
    
    public L(int x, int y, int dir)
    {
        super(x, y, dir);
        this.fill = #400040;
        cubes[0] = new Cube(x, y, fill);
        cubes[1] = new Cube(x + Cube.sizeL, y, fill);
        cubes[2] = new Cube(x + 2*Cube.sizeL, y, fill);
        cubes[3] = new Cube(x + 2*Cube.sizeL, y + Cube.sizeL, fill);
        actualiser();
    }

    void turn()
    {
        direction = (direction + 1)%4;
        actualiser();
    }

    void actualiser()
    {
        switch(direction)
        {
            case 0:
                cubes[0].x = x;
                cubes[0].y = y;
                cubes[1].x = x + Cube.sizeL;
                cubes[1].y = y;
                cubes[2].x = x + 2*Cube.sizeL;
                cubes[2].y = y;
                cubes[3].x = x + 2*Cube.sizeL;
                cubes[3].y = y + Cube.sizeL;
                break;
            case 1:
                cubes[0].x = x + Cube.sizeL;
                cubes[0].y = y;
                cubes[1].x = x + Cube.sizeL;
                cubes[1].y = y + Cube.sizeL;
                cubes[2].x = x + Cube.sizeL;
                cubes[2].y = y + 2*Cube.sizeL;
                cubes[3].x = x;
                cubes[3].y = y + 2*Cube.sizeL;
                break;
            case 2:
                cubes[0].x = x;
                cubes[0].y = y;
                cubes[1].x = x;
                cubes[1].y = y + Cube.sizeL;
                cubes[2].x = x + Cube.sizeL;
                cubes[2].y = y + Cube.sizeL;
                cubes[3].x = x + 2*Cube.sizeL;
                cubes[3].y = y + Cube.sizeL;
                break;
            case 3:
                cubes[0].x = x;
                cubes[0].y = y;
                cubes[1].x = x + Cube.sizeL;
                cubes[1].y = y;
                cubes[2].x = x;
                cubes[2].y = y + Cube.sizeL;
                cubes[3].x = x;
                cubes[3].y = y + 2*Cube.sizeL;
                break;
        }
    }
}
