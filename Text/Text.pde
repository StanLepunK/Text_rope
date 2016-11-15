

void setup() {
  size(800, 600, P3D);
  int size_font = 60 ;
  RPE_text_font("MADFONT(1).ttf", size_font) ;
  PFont font = getFont_rpe_text() ;
  textFont(font) ;
  textSize(60) ;
}



void draw() {
	background(0);
	fill(255,0,0) ;
  stroke(255,0,0) ;
  // noStroke() ;

  String s = "Fenêtre sur cour" ;

	/* path of the text 
  If it's a simple path, Processing search in the folder data of your sketch */


  /* choice for vertex or glyph mode */
  RPE_text_vertex(true) ;

  /* space between the point of each letter */
  RPE_text_glyph_point(4) ;
  
  /* position of letter on the line */
  int entry = 5 ;
  int exit = 10 ;
  // RPE_text_spacing(entry, exit, true, 20, 10) ;
  // RPE_text_spacing(entry, true, 20, 10) ;
  // RPE_text_spacing(true, 20, 10) ;
  
  // RPE_text_baseline(false, 0, -10, -20, -30, 0) ;
  // RPE_text_baseline(entry, exit, false, 10, -10) ;
  // RPE_text_baseline(entry, false, 10, -10) ;
  
  float [] frontback = new float [s.length()] ;
  float wave = sin(frameCount *.1) ;
  float scale = 100. ;
  float step = frontback.length / scale ; 
  for(int i = 0 ; i < frontback.length ; i++) {
    frontback[i] = (i *step +scale *wave) -scale;
  }
  // RPE_text_frontback(true, entry, exit, frontback) ;
 // RPE_text_frontback(true, entry, frontback) ;
 // RPE_text_frontback(true, frontback) ;

  /* position of text */
  RPE_text(s, width/6, height/4, 0) ;


  RPE_text_mode_point() ;
  // RPE_text_mode_vertex() ;
  /*
  RPE_text_mode_SVG(PShape [] pshape) ;
*/
  //RPE_text_effect_cloud() ;
  
  float speed = .1 ;
  //RPE_text_effect_wave(true, speed, 30) ;

  //RPE_text_effect_wave(entry, false, speed, 30, 50) ;

  // RPE_text_effect_wave(entry, exit, true, speed, 30, 50) ;
  
  
  /*
  cloud
  */
  // RPE_text_effect_cloud(entry, exit, true, Vec3(2,2,4)) ;




  
  fill(255) ;
  text(s, width/6, height/2);
}