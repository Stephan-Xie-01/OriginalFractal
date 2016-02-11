public void setup()
{
	size(800,800);
	frameRate(10);
}
int deg =0;
//int opac = 200;
public void draw() 
{
	fractal(400,400, 400);
	deg += 10;
	//opac -= 20;
}


public void fractal(int x, int y, int radius)
{

	if(radius > 20)
	{
		int fractalDegrees =0;
		rotate(fractalDegrees);
		fractalDegrees ++;

		if(fractalDegrees > 360)
			fractalDegrees = 0;
		fractal(x + radius/2, y, radius/4);
		fractal(x + radius, y + radius/2, radius/4);
		fractal(x + 3*radius/4, y + radius, radius/4);
		fractal(x + radius/4, y + radius, radius/4);
		fractal(x, y + radius/2, radius/4); 
		
	}
	noFill();
	stroke(160,0,80);
	ellipse(x , y, 2*radius, 2*radius);
	stroke(0,160,160);
	noFill();
	ellipse(x + radius/4, y + radius/4, 2*radius, 2*radius);

	
	fill(255,255,255);
	noStroke();
	rotate(deg);
	triangle(x - radius/2, y + radius/2, x, y - radius/2, x + radius/2, y + radius/2);
}
