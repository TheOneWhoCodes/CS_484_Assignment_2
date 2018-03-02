// Christian Garcia
// CS 484
// Assignment 2
// Fedruary 9, 2018

// Font/image variables
PFont f;                

PImage img;
PImage imgSpotify;
PImage imgCal;
PImage imgFit;
PImage imgUber;
PImage imgMessage;
PImage imgBat;
PImage imgJJ;

// Manage weather view
boolean showWeather = false;

void setup() {
  size(750, 750);
  background(51);
  noStroke();
  noLoop();
  
  // Set up font
  f = createFont("Arial",16,true); // STEP 2 Create Font
  
  // Import images
  img = loadImage("img/weather.png");
  imgSpotify = loadImage("img/spotify.png");
  imgCal = loadImage("img/calendar.png");
  imgFit = loadImage("img/fit.png");
  imgUber = loadImage("img/uber.png");
  imgMessage = loadImage("img/message.png");
  imgJJ = loadImage("img/jj.png");
  imgBat = loadImage("img/battery.png");
}

void draw() {
  // Main body
  drawFrame(width*0.5, height*0.5, 500, 10);
  
  // Battery gauge
  drawBat(width*0.5, height*0.5, 475, 10);
  
  // Main interface backdrop
  drawFrame(width*0.5, height*0.5, 450, 10);
  
  // Battery symbol frame
  rect(350,495,50,100);
  
  // Time
  textFont(f,64);
  fill(255);
  text("10:18 AM",240,390);  
  
  // Temp
  textFont(f,16);
  text("49 °F",350,285);  
  
  // Date
  text("Feb 09",350,410);  
  
  // Calendar appointment
  text("Up Next: CS 484",420,310);  
  
  // Images such as weather icon and app logos
  image(img, 335, 200,75,75);
  image(imgMessage, 240, 250,60,60);
  image(imgSpotify, 355, 515,40,40);
  image(imgCal, 450, 240,50,50);
  image(imgFit, 355, 440,40,40);
  image(imgUber, 407, 475,40,40);
  image(imgJJ, 300, 470,50,50);
  image(imgBat, 365, 579,20,10);
  
  // Display weather when weather icon detects mouse click
  if(showWeather == true) {
    drawWeather(width*0.5, height*0.5, 450, 10);
  }
}

// Draw grey circle
void drawFrame(float xloc, float yloc, int size, int num) {
  float steps = size/num;
  fill(32);
  ellipse(xloc, yloc, size - steps, size - steps);
}

// Draw blue circle
void drawBat(float xloc, float yloc, int size, int num) {
  float steps = size/num;
  fill(0, 191, 255);
  ellipse(xloc, yloc, size - steps, size - steps);
}

// Draw weather view
void drawWeather(float xloc, float yloc, int size, int num) {
  float steps = size/num;
  fill(255);
  ellipse(xloc, yloc, size - steps, size - steps);
  image(img, 300, 250,150,150);
  fill(0);
  text("IT GON' RAIN",325,400);  
  text("Back",355,550); 
  textFont(f,58);
  text("49 °F",305,460);  
}

// Decide if weather view is shown or hidden
void mouseClicked() {
  redraw();
  
  if (mouseX >= 340 && mouseX <= 405 && mouseY >= 200 && mouseY <= 300) { 
    showWeather = true;
  }
  
  if (showWeather == true && mouseX >= 340 && mouseX <= 405 && mouseY >= 500 && mouseY <= 600) { 
    showWeather = false;
  }
}