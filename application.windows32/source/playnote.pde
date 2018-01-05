
void playnote() {

  if (buttons[C_Major].on) {
    out.playNote( 0, noteduration, CMajorPentscaleNote );
    buttons[C_Major].on = false;
  } 

  if (buttons[D_Major].on) {
    out.playNote( 0, noteduration, DMajorPentscaleNote );
    buttons[D_Major].on = false;
  }
  if (buttons[E_Major].on) {
    out.playNote( 0, noteduration, EMajorPentscaleNote );
    buttons[E_Major].on = false;
  }
  if (buttons[F_Major].on) {
       out.playNote( 0, noteduration, FMajorPentscaleNote );
    buttons[F_Major].on = false;
  }
  if (buttons[G_Major].on) {
           out.playNote( 0, noteduration, GMajorPentscaleNote );
    buttons[G_Major].on = false;

  }
  if (buttons[A_Major].on) {
               out.playNote( 0,noteduration, AMajorPentscaleNote );

    buttons[A_Major].on = false;
  }
  if (buttons[B_Major].on) {
                 out.playNote( 0, noteduration, BMajorPentscaleNote );

    buttons[B_Major].on = false;
  }
  
  
  
}