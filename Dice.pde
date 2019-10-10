void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	for(int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			Die harry = new Die(200, 200);
			harry.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int xPosition;
	int yPosition;
	int rectSize = 100;
	//this may need to be put somewhere else so that it changes each time
	int rollValue = (int)(Math.random()*6)+1;
	int dotSize = rectSize/7;

	Die(int x, int y) //constructor
	{
		xPosition = x;
		yPosition = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(xPosition, yPosition, rectSize, rectSize);
		fill(0);
		if(rollValue <= 1){
			ellipse(xPosition + rectSize/2, yPosition + rectSize/2, dotSize, dotSize); 
		}else if(rollValue <= 2){
			ellipse(xPosition + 3*rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize); 
		}else if(rollValue <= 3){
			ellipse(xPosition + 3*rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/2, yPosition + rectSize/2, dotSize, dotSize); 
		}else if(rollValue <= 4){
			ellipse(xPosition + 3*rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + 3*rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize);  
		}else if(rollValue <= 5){
			ellipse(xPosition + 3*rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + 3*rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize);  
			ellipse(xPosition + rectSize/2, yPosition + rectSize/2, dotSize, dotSize); 
		}else if(rollValue <= 6){
			ellipse(xPosition + 3*rectSize/4, yPosition + rectSize/2, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + rectSize/2, dotSize, dotSize); 
			ellipse(xPosition + 3*rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + rectSize/4, yPosition + rectSize/4, dotSize, dotSize); 
			ellipse(xPosition + 3*rectSize/4, yPosition + 3*rectSize/4, dotSize, dotSize);  
		}
	}
}
