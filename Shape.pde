class Shape
{
    Cube cubes[] = new Cube[4];
    int direction;
    int x, y;
    int fill;

    public Shape(int x, int y, int dir)
    {   
        this.x = x;
        this.y = y;
        this.direction = dir;
    }

    void draw()
    {
        for (Cube c : cubes)
        {
            c.draw();
        }
    }

    void avancer()
    {
        boolean possible = true;
        for (Cube cube : cubes)
        {
            if(cube.y + Cube.sizeL == height)
            {
                possible = false;
            }
        }
        if (possible)
        {
            this.y += 40;
            for (Cube c : cubes)
            {
                c.avancer();
            }    
        }
        
    }

    void goRight()
    {
        boolean possible = true;
        for (Cube cube : cubes)
        {
            if(cube.x + Cube.sizeL == width)
            {
                possible = false;
            }
        }

        if (possible)
        {
            x += 40;
            for (Cube cube : cubes)
            {
               cube.goRight();
            }
        }
    }

    void goLeft()
    {
        boolean possible = true;
        for (Cube cube : cubes)
        {
            if(cube.x == 0)
            {
                possible = false;
            }
        }

        if (possible)
        {
            x -= 40;
            for (Cube cube : cubes)
            {
               cube.goLeft();
            }
        }
    }

    void turn()
    {

    }
}