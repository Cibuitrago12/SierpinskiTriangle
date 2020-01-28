public void setup()
{
	size(800,800);
	background(24, 81, 204);
}
public void draw()
{
	fill(204, 150, 2);
	sierpinski(50, 750, 700);
}
public void mouseClicked()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, x + len, y, x+len/2, y - len);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}