Die harry;
void setup()
{
	noLoop();
	harry = new Die(100, 100);
}
void draw()
{
	background(0);
	harry.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		int xPosition = x;
		int yPosition = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(xPosition, yPosition, 100, 100);
	}
}
