int counter = 0;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(0);
	fill(255);
	for(int j = 0; j < 400; j+=50){
		for(int i = 0; i < 500; i+=30){
			Die harry = new Die(i, j);
			harry.show();
			//System.out.println(harry.yPosition);
			counter = counter + harry.rollValue;
		}
	}
	fill(50);
	textSize(50);
	text("Score = " + counter, 100, 450);
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
	int rectSize;
	int rollValue;
	int dotSize;

	Die(int x, int y) //constructor
	{
		xPosition = x;
		yPosition = y;
		rectSize = 30;
		rollValue = (int)(Math.random()*6)+1;
		dotSize = rectSize/7;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(xPosition, yPosition, rectSize, rectSize);
		System.out.println(xPosition+", "+yPosition+", "+rectSize+", "+rectSize);
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
