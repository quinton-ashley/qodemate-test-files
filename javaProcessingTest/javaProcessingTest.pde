// https://www.youtube.com/watch?v=LaarVR1AOvs
// y = 5x //0 t1:55

// x = 5t //1 t2:36
// y = 3t + 3

static final int NUM_LINES = 10; //34 t13:25 r13:47

float t; //11 t5:32

void setup() { //5 t3:45
  background(20); //6 t3:55
  size(500, 500);
} //5

void draw() { //7 t4:00
  background(20); //32 tr12:50
  stroke(255);
  strokeWeight(5); //8 t4:15
  
  translate(width/2, height/2); //10 t5:00
  for (int i = 0; i < NUM_LINES; i++) { //33 t13:13
    line(x1(t), y1(t), x2(t), y2(t)); //31 tr12:32
    line(x1(t+i), y1(t+i), x2(t+i), y2(t+i)); //35 tr13:57
  } //33
  point(x1(0), y1(0)); //2 t4:24 r4:42
  point(x1(t), y1(t)); //12 t5:42 r5:49 31
  point(x2(t), y2(t)); //28 t11:45 31
  t++; //10 34
  t += 0.5; //34 tr14:17
} //7

float x1(float t) { //2 t3:25
  return 0; //3
  //12 =t; tr5:59
  //19 =sin(t / 10) * 100; tr8:20
  //21 =sin(t / 10) * 100 + sin(t / 20) * 20; tr9:00
  //22 =sin(t / 10) * 100 + sin(t / 15) * 20; tr9:13
  //23 =sin(t / 10) * 100 + sin(t / 15) * 100; tr9:26
  //24 =sin(t / 10) * 100 + sin(t) * 100; tr10:10
  //25 =sin(t / 10) * 100 + sin(t) * 1; tr10:24
  //26 =sin(t / 10) * 100 + sin(t) * 2; tr10:32
  //30 =sin(t / 10) * 100 + sin(t / 5) * 20; t12:16 r12:21
} //2

float y1(float t) { //4 t3:37
  return 0; //4
  //13 =-t; tr6:27
  //14 =sin(t); tr6:40
  //15 =sin(t / 10) * 100; tr6:40
  //16 =sin(t / 100) * 100; tr7:30
  //17 =sin(t * 2) * 100; tr7:30
  //18 =sin(t / 10) * 100; tr8:00
  //20 =cos(t / 10) * 100; tr8:35
} //4

float x2(float t) { //27 t11:00
  return sin(t / 10) * 100 + sin(t) * 2;
  //30 =sin(t / 10) * 200 + sin(t) * 2;
}

float y2(float t) {
  return cos(t / 10) * 100;
  //29 =cos(t / 20) * 100 + cos(t / 12) * 20; t11:56 r12:02
  //30 =cos(t / 20) * 200 + cos(t / 12) * 20;
}
