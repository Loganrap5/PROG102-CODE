/*
Logical Operators and Arrays
Logan Rappaport
2/16/2026
*/

String[] words = {"My", "Name", "Is", "Logan"};

int wordX = 65;
int wordY = 65;
int offset = 4;
int fontSize = 40;
int fontValue = 250;
int shadowValue = 10;

int rate = 1;
int maxFrames = 4;

int maxRandomColorValue = 255;
int minCircleDiameter = 50;
int maxCircleDiameter = 500;
int minAlpha = 40;
int maxAlpha = 70;

void setup()
{
  size(800,800);
  background(random(maxRandomColorValue), random(maxRandomColorValue), random(maxRandomColorValue));
  frameRate(rate);
  println("Frame rate is set to " + rate + " and the maximum number of frames is " + maxFrames + ".");
}

void draw()
{
  DrawShape();
  
  if(frameCount >= maxFrames)
  {
    CreateTitle();
    noLoop();
  }
}

void DrawShape()
{
  fill(random(maxRandomColorValue), random(maxRandomColorValue), random(maxRandomColorValue), random(minAlpha, maxAlpha));
  circle(random(width), random(height), random(minCircleDiameter, maxCircleDiameter));
}

void CreateTitle()
{
  textSize(fontSize);
  
  for(int i = 0; i < words.length; i++)
  {
    fill(shadowValue);
    text(words[i], wordX, wordY);
    
    fill(fontValue);
    text(words[i], wordX-offset, wordY-offset);
    wordY+=fontSize;
  }
}
