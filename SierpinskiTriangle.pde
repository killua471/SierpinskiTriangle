int x=20;
public void setup()
{
  size(500,500);
}
public void draw()
{
  background(0);

  sierpinski(0,height,x);
}
public void mouseMoved()//optional
{
  x=mouseX;
  fill(color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)));
}
public void sierpinski(int x, int y, int len) 
{
  if(len <=20){
    triangle(x,y,x+len,y,x+len/2,y-len);
  }else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
