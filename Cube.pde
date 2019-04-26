class Cube
{
    int x;
    int y;
    final static int sizeL = 40;
    int fill;

    public Cube(int x, int y, int fill)
    {
        this.x = x;
        this.y = y;
        this.fill = fill;
    }

    void draw()
    {
        fill(fill);
        noStroke();
        rect(x, y, sizeL - 3, sizeL - 3);
    }

    void avancer()
    {
        this.y += 40;
    }

    void goRight()
    {
        this.x += 40;
    }

    void goLeft()
    {
        this.x -= 40;
    }
}
