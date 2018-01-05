  class Button  {   
 
  float x;  
  float y;  
  float w;  
  float h;  
  boolean on;
  
  int gray;
  int timer;
  
  Button(float tempX, float tempY, float tempW, float tempH )  {   
    x  = tempX;  
    y  = tempY;  
    w  = tempW;  
    h  = tempH;  
    on = false; 
  }   
 
  boolean click(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      on = !on;
      gray = 175;
      timer = 1 + noteDuration * 60; // 6 sec at 60 fps 
      return true;
    }
    return false;
  }
 
  void display() {
    // The color changes based on the state of the button
    fill(gray);
    if (timer > 0) {
      timer--;  // fade
      if (timer == 0) gray = 0;
    }
     
    rect(x,y,w,h);
  }
   
}  // end class