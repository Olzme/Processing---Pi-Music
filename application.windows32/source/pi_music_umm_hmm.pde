import ddf.minim.*;


Button[] buttons = new Button[7];

Table data; 
int rowIdx = 0; 
int colIdx = 0;
int counter;
int counterReset = 20;
float noteduration=0.75;
int noteDuration=1;
Minim minim;
AudioOutput out;

// pent scale assigned from buttons 0-6 (7 total)

int C_Major =0; 
int D_Major =1;
int E_Major =2;
int F_Major =3;
int G_Major =4;
int A_Major =5;
int B_Major =6;

//String Notes which have the mapped variable
String CMajorPentscaleNote;
String DMajorPentscaleNote;
String EMajorPentscaleNote;
String FMajorPentscaleNote;
String GMajorPentscaleNote;
String AMajorPentscaleNote;
String BMajorPentscaleNote;

void setup() {

  minim = new Minim(this);
  out = minim.getLineOut (Minim.STEREO);
  data = loadTable ("pi.csv", "csv");
  size(600, 200);
  smooth();
  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(i*75+45, height/2-25, 50, 50);
  }
}
void draw() {

  background(175);
  ifmapping();
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
    playnote();
    fill (205, 100, 100);
    text("Speed of PI change is -" + counterReset +"-    (Hold the -U- key to increase by 1, hold the -I- key to decrease by 1)", 25, 195);
    text("Note duration is currently -" + noteduration +"- seconds. (Hold the -J- key to increase by 1, hold the -K- key to decrease by 1)", 2, 180);
  }
  fill(255);
  text(" C \nMajor", 50, 100);
  text(" D \nMajor", 125, 100);
  text(" E \nMajor", 200, 100);
  text(" F \nMajor", 275, 100);
  text(" G \nMajor", 350, 100);
  text(" A \nMajor", 425, 100);
  text(" B \nMajor", 500, 100);

  fill (0);
  text("CMajorPentscaleNote \nis currently: " + CMajorPentscaleNote, 30, 50);
  fill (255, 50, 25);
  text("DMajorPentscaleNote \nis currently: " + DMajorPentscaleNote, 160, 50);
  fill (50, 150, 50);
  text("EMajorPentscaleNote \nis currently: " + EMajorPentscaleNote, 290, 50);
  fill(0, 0, 255);  
  text("FMajorPentscaleNote \nis currently: " + FMajorPentscaleNote, 420, 50);
  fill(0, 100, 25);  
  text("GMajorPentscaleNote \nis currently: " + GMajorPentscaleNote, 110, 150);
  fill(200, 100, 55);  
  text("AMajorPentscaleNote \nis currently: " + AMajorPentscaleNote, 240, 150);
  fill(100, 100, 55);  
  text("BMajorPentscaleNote \nis currently: " + BMajorPentscaleNote, 370, 150);

  counter++;
  if ( counter == counterReset ) { 
    counter =0;
    colIdx++;
    if (colIdx == 10) {
      colIdx = 0;

      rowIdx++;
      if (rowIdx == data.getRowCount()) rowIdx = 0;
    }
    if (keyPressed) {
      if (key == 'j') {
        noteduration+=1;
        noteDuration+=1;
      }

      if (key == 'k') {
        noteduration-=1;
        noteDuration-=1;
      }

      if (key == 'u') {

        counterReset+=1;
      }

      if (key == 'i') {

        counterReset-=1;
      }
    }
  }
}

void mousePressed() {
  for (int i = 0; i < buttons.length; i++) {
    if ( buttons[i].click(mouseX, mouseY) == true ) {
      // we know that button 'i' has been clicked
    }
  }
}