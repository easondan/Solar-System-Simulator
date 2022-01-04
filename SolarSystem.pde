/*Eason
 March 23 2017
 This is a program about the solar system 
 */
//Variables
import javax.swing.JOptionPane;

int x = 1280;
int y = 800;
float px, py;
float mx, my;
float mx2, my2;
float ex, ey;
float vx, vy;
float jx, jy;
float sx, sy;
float ux, uy;
float nx, ny;
String sNumOfPlanets  ;
int counter;

void setup() {
  //sets framerate
  frameRate(60);
  JOptionPane.showMessageDialog(null, "Hello Clicking a number 1-9  from the closeswill give you information on Each Planet");
  //Sets the size of the Canvas
  size(1280, 800);


  //Pluto Rotation initate variable
  px = x/2-500; 
  py = y/2+10; 

  //Mercury Rotation initate variable
  mx = x/2-43;
  my = y/2+12;

  //Earth Rotation initate variable
  ex = x/2-140;
  ey = y/2+16;

  //Mars Rotation initate variable
  mx2 = x/2-195;
  my2 = y/2+20;

  //Venus Rotation initate variable
  vx = x/2-100;
  vy = y/2+10;

  //Jupiter Rotation initate variable
  jx = x/2-300;
  jy = y/2+15;

  //Saturn Rotation initate variable
  sx = x/2-350;
  sy = y/2+10;

  //Uranus Rotation initate variable
  ux = x/2-400;
  uy = y/2+10;

  //Neptune Rotation initate variable
  nx = x/2-450;
  ny = y/2+15;
}


void draw() {
  
  
  //sets the background
  background(0);
  //Created a rectangle 
  rect(0, 0, width, height);
  fill(255);
  beginShape(POINTS);
  //creates  rectangles randomly
  rect(random(width), random(height), 5, 5);
  //creates  cicles randomly
  ellipse(random(width), random(height), 8, 8);
  fill(0);
  
 beginShape();
    vertex(100,50);
    vertex(100,90);
    vertex(200,50);
    vertex(200,90);
    
   
    endShape(CLOSE);
    
  
  
  //A for loop where i is 12 and the condition is greater than zero 
  //Increments subtarcting 100
  for (int i = 1200; i>0; i-=100) {
    //Draws the circles 
    stroke(255);
    ellipse(x/2, y/2, i-200, i-200);
    fill(0);
    
  
  }
  //Take away all the lines 
  noStroke();
  //Draw Sun
  fill(255, 255, 0);   
  ellipse(x/2, y/2, 50, 50);
  fill(0);



  //draw Pluto
  fill(150, 0, 0);
  //Using sin and cos as well as framecount to rotate the planets
  px = px + (sin(frameCount/25.0)*20.0);
  py = py + (cos(frameCount/25.0)*20.0);
  ellipse(px, py, 20, 20);

  //Draw Neptune 
  fill(0, 0, 230);
  //Using sin and cos as well as framecount to rotate the planets
  nx = nx + (sin(frameCount/20.5)*22.0);
  ny = ny + (cos(frameCount/20.5)*22.0);
  ellipse(nx, ny, 40, 40);
  fill(0);

  //Draw Uranus  
  fill(0, 0, 230);
  //Using sin and cos as well as framecount to rotate the planets
  ux = ux + (sin(frameCount/18.25)*22.0);
  uy = uy + (cos(frameCount/18.25)*22.0);
  ellipse(ux, uy, 30, 30);
  fill(0);


  //Draw Saturn
  fill(204, 102, 50);
  //Using sin and cos as well as framecount to rotate the planets
  sx = sx + (sin(frameCount/16.0)*22.0);
  sy = sy + (cos(frameCount/16.0)*22.0);
  
  ellipse(sx, sy, 45, 45);
  stroke(55);
  fill(0);



  //Draw Jupiter 
  fill(204, 102, 0);
  //Using sin and cos as well as framecount to rotate the planets
  jx = jx + (sin(frameCount/13.7)*22.0);
  jy = jy + (cos(frameCount/13.7)*22.0);
  ellipse(jx, jy, 48, 48);
  fill(0);


  //Draw Venus   
  //Using sin and cos as well as framecount to rotate the planets
  vx = vx + (sin(frameCount/4.5)*22.0);
  vy = vy + (cos(frameCount/4.5)*22.0);
  fill(255, 0, 0);
  ellipse(vx, vy, 30, 30);
  fill(0);

  //Draw Mercury 
  fill(165);
  //Using sin and cos as well as framecount to rotate the planets
  mx = mx + (sin(frameCount/2.2)*22.0);
  my = my + (cos(frameCount/2.2)*22.0);
  ellipse(mx, my, 20, 20);
  fill(0);

  //Draw Mars
  fill(120, 0, 0);
  //Using sin and cos as well as framecount to rotate the planets
  mx2 = mx2 + (sin(frameCount/9.0)*22.0);
  my2 = my2 + (cos(frameCount/9.0)*22.0);
  ellipse(mx2, my2, 40, 40);
  fill(0);

  //Draw Earth
  fill(0, 0, 255);
  //Using sin and cos as well as framecount to rotate the planets
  ex = ex + (sin(frameCount/6.8)*22.0);
  ey = ey + (cos(frameCount/6.8)*22.0);
  ellipse(ex, ey, 40, 40);
  fill(0);
}

void keyPressed() {
  // if the person click on the 1 key then a messagebox appears 
  if (key == '1') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Mercury:PLANET\nRadius: 2,440 km"+
      " \nMass: 3.285 × 10^23 kg (0.055 M⊕)"
      + " \nDistance from Sun: 57.91 million km"
      + "\nLength of day: 58d 15h 30m" +
      " \nOrbital period: 88 days");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '2') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Venus:PLANET\nRadius: 6,052 km"+
      " \nMass: 4.867 × 10^24 kg (0.815 M⊕)"+
      " \nDistance from Sun: 108.2 million km"+
      " \nOrbital period: 225 days"+
      "\nLength of day: 116d 18h 0m");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '3') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Earth:PLANET\nRadius: 6,371 km"+
      "\nMass: 5.972 × 10^24 kg"+
      "\nAge: 4.543 billion years"+
      "\nDistance from Sun: 149.6 million km"+
      "\nLongitude of ascending node: −11.26064° to J2000 ecliptic"+
      "\nAxial tilt: 23.4392811°");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '4') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Mars:PLANET\nRadius: 3,390 km"+
      "\nMass: 6.39 × 10^23 kg (0.107 M⊕)"+
      "\nNorth pole right ascension: 317.68143°; 21h 10m 44s"+
      "\nNorth pole declination: 52.88650°"+
      "Argument of perihelion: 286.502°");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '5') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Jupiter:PLANET\nRadius: 69,911 km"+
      "\nMass: 1.898 × 10^27 kg (317.8 M⊕)"+
      "\nOrbital period: 12 years"+
      "\nDistance from Sun: 778.5 million km"+
      "\nMoment of inertia factor: 0.254 I/MR2 (estimate)");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '6') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Saturn:PLANET\nRadius: 58,232 km"+
      "\nMass: 5.683 × 10^26 kg (95.16 M⊕)"+
      "\nDistance from Sun: 1.429 billion km"+
      "\nOrbital period: 29 years"+
      "\nLength of day: 0d 10h 42m");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '7') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Uranus:PLANET\nRadius: 25,362 km"+
      "\nMass: 8.681 × 10^25 kg (14.54 M⊕)"+
      "\nDistance from Sun: 2.871 billion km"+
      "\nOrbital period: 84 years"+
      "\nLongitude of ascending node: 74.006°");
    // if the person click on the 1 key then a messagebox appears
  } else if (key == '8') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Neptune:PLANET\nRadius: 24,622 km"+
      "\nDistance from Sun: 4.495 billion km"+
      "\nOrbital period: 165 years"+
      "\nMass: 1.024 × 10^26 kg (17.15 M⊕)"+
      "\nLength of day: 0d 16h 6m");

    // if the person click on the 1 key then a messagebox appears
  } else if (key == '9') {
    //Message box that gives in information 
    JOptionPane.showMessageDialog(null, "Pluto:DWARF PLANET\nRadius: 1,188 km"+
      "\nOrbital period: 248 years"+
      "\nDiscovered: February 18, 1930"+
      "\nEquatorial rotation velocity: 47.18 km/h"+
      "\nSurface pressure: 1.0 Pa (2015)");
      
      //if the person presses the key 0
  }else if (key == '0'){
    //displays message
    JOptionPane.showMessageDialog(null,"Find the constellation Orion ");
  }
  
}