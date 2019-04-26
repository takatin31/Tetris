ArrayList<Shape> shapes = new ArrayList<Shape>();
Shape TheShape;

void setup()
{
    size(400, 680);
    frameRate(2);
    TheShape = new L(40, 0, 0);
}

void drawPlatforme()
{
    background(51);

    noFill();
    stroke(255);
    strokeWeight(2);

    for (int i = 0 ; i < 10 ; i++)
    {
        for (int j = 0 ; j < 17 ; j++)
        {
            rect(i*40, j*40, 40, 40);
        }
    }
    TheShape.draw();
}

void draw()
{
    drawPlatforme();
    TheShape.avancer();
}

void keyPressed()
{
    if (key == ' ')
        TheShape.turn();

    switch (keyCode) 
	{
		case RIGHT:
			TheShape.goRight();
            drawPlatforme();
			break;
		case LEFT:
			TheShape.goLeft();
            drawPlatforme();
            break;
	}
}
