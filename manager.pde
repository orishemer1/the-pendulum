import processing.sound.*;

static int WINDOWS_NUM = 3;
static int DONT_SWITCH_TIME = 300;
int window = -1;
boolean need_setup = true;
int switch_frame = 0;

SoundFile music;
SoundFile sw_sound;
SoundFile wl_sound;
SoundFile neon_sound;

void setup() {
  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
  size(displayWidth, displayHeight);
  background(0);
  read_accelerometer();
  switch_frame = DONT_SWITCH_TIME;
  map_data();
  
  music = new SoundFile(this,"Upbeat Background Music For Videos and Presentations.wav");
  neon_sound = new SoundFile(this,"neon.wav");
  sw_sound = new SoundFile(this,"sw.wav");
  wl_sound = new SoundFile(this,"wl.wav");
}

void draw(){
  if(keyPressed) {
    print();
  }
  read_accelerometer();
  map_data();

  read_accelerometer();
  map_data();

 window = 0;
//  if(window!=-1 && check_move()){
//    if (frameCount > switch_frame){
//      window = (window + 1) % WINDOWS_NUM;
//      print("window: ");
//      println(window);
//      switch_frame = frameCount + DONT_SWITCH_TIME;
//      need_setup = true;
//    }
//  }    
  if(window==-1){
    if(need_setup){
      setup_open();
      need_setup=false;
    }
    draw_open();
    if(check_touch()){
      window=0;
      need_setup=true;
    }
  }
  if(window == 0){
    if(need_setup){
      setup_spiderWeb();
      need_setup=false;
    }
    draw_spiderWeb();
  }
  if(window == 1){
    if(need_setup){
      setup_whiteLine();
      need_setup=false;
    }
    draw_whiteLine();
  }
  
    if (window == 2){
    if(need_setup){
      setup_neon();
      need_setup=false;
    }
    draw_neon();
  }
  
}
