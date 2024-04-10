import oscP5.*;  
import netP5.*;

//set OSC to recieve 
OscP5 oscP5;
NetAddress myRemoteLocation;
int centroid, centroidS, loudness, loudS, pitch, pitchS, r;
int centroid1, centroidS1, loudness1, loudS1, pitch1, pitchS1, r1;
int centroid2, centroidS2, loudness2, loudS2, pitch2, pitchS2, r2;
int centroid3, centroidS3, loudness3, loudS3, pitch3, pitchS3, r3;
int centroid4, centroidS4, loudness4, loudS4, pitch4, pitchS4, r4;
int centroid5, centroidS5, loudness5, loudS5, pitch5, pitchS5, r5;
int centroid6, centroidS6, loudness6, loudS6, pitch6, pitchS6, r6;
int centroid7, centroidS7, loudness7, loudS7, pitch7, pitchS7, r7;
int counter;

void setup() {
  size(600, 800);
  frameRate(5);
  //initialise an instance of listening to port 8000
  oscP5 = new OscP5(this, 8000);  
  //the port it will send to (which you need the ableton reciever to be listening for) 
  myRemoteLocation = new NetAddress("127.0.0.1", 8001);
}

void draw() {
  background(#f1f1f1);
  //dividing lines 
  stroke(#b6b7b7);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  line(0, height/4, width, height/4);
  line(0, (height/4)*3, width, (height/4)*3);
  noStroke();
  //drawing the circles
  //8000T
  fill(r, 0, 255, 150);
  circle(150, pitchS, loudS);
  //8001T
  fill(0, 255-r1, 255, 150);
  circle(450, pitchS1, loudS1);
  //8002T
  fill(255, 0, r2, 150);
  circle(150, 200+pitchS2, loudS2);
  //8003T
  fill(255, 255-r3, 0, 150);
  circle(450, 200+pitchS3, loudS3);
  //8004T
  fill(255, r4, 255, 150);
  circle(150, 400+pitchS4, loudS4);
  //8005T
  fill(r5, 0, 0, 150);
  circle(450, 400+pitchS5, loudS5);
  //8006T
  fill(0, 255-r6, 0, 150);
  circle(150, 600+pitchS6, loudS6);
  //8007T
  fill(150, 0, 255-r7, 150);
  circle(450, 600+pitchS7, loudS7);
} 

//incoming OSC message are forwarded to the oscEvent method.
//the values are taken from the OSC messages, assigned to a 
//variable and then rescaled and assigned to a new variable 
void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/pitch") == true ) {
    pitch = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS = (pitch*2)/80;
  } 
  if (theOscMessage.checkAddrPattern("/pitch1") == true ) {
    pitch1 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS1 = (pitch1*2)/80;
  }
  if (theOscMessage.checkAddrPattern("/pitch2") == true ) {
    pitch2 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS2 = (pitch2*2)/80;
  }
  if (theOscMessage.checkAddrPattern("/pitch3") == true ) {
    pitch3 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS3 = (pitch3*2)/80;
  }

  if (theOscMessage.checkAddrPattern("/pitch4") == true ) {
    pitch4 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS4 = (pitch4*2)/80;
  }
  if (theOscMessage.checkAddrPattern("/pitch5") == true ) {
    pitch5 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS5 = (pitch5*2)/80;
  }
  if (theOscMessage.checkAddrPattern("/pitch6") == true ) {
    pitch6 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS6 = (pitch6*2)/80;
  }
  if (theOscMessage.checkAddrPattern("/pitch7") == true ) {
    pitch7 = int((theOscMessage.get(0).floatValue()));
    //rescale
    pitchS7 = (pitch7*2)/80;
  }


  //mapping centroid to r value of colour
  if (theOscMessage.checkAddrPattern("/centroid") == true ) {
    centroid = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS = int((centroid*2.55)/60);
    r=centroidS;
  }
  if (theOscMessage.checkAddrPattern("/centroid1") == true ) {
    centroid1 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS1 = int((centroid1*2.55)/60);
    r1=centroidS1;
  }
  if (theOscMessage.checkAddrPattern("/centroid2") == true ) {
    centroid2 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS2 = int((centroid2*2.55)/60);
    r2=centroidS2;
  }
  if (theOscMessage.checkAddrPattern("/centroid3") == true ) {
    centroid3 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS3 = int((centroid3*2.55)/60);
    r3=centroidS3;
  }
  if (theOscMessage.checkAddrPattern("/centroid4") == true ) {
    centroid4 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS4 = int((centroid4*2.55)/60);
    r4=centroidS4;
  }
  if (theOscMessage.checkAddrPattern("/centroid5") == true ) {
    centroid5 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS5 = int((centroid5*2.55)/60);
    r5=centroidS5;
  }
  if (theOscMessage.checkAddrPattern("/centroid6") == true ) {
    centroid6 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS6 = int((centroid6*2.55)/60);
    r6=centroidS6;
  }
  if (theOscMessage.checkAddrPattern("/centroid7") == true ) {
    centroid7 = int((theOscMessage.get(0).floatValue()));
    //rescale
    centroidS7 = int((centroid7*2.55)/60);
    r7=centroidS7;
  }


  //mapping loudness to circle diameter
  if (theOscMessage.checkAddrPattern("/loudness") == true ) {
    loudness = theOscMessage.get(0).intValue();
    loudness = loudness+80;
    if (loudness<0) {
      loudS=0;
    } else {
      //rescale
      loudS = int((loudness*8)/3);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness1") == true ) {
    loudness1 = theOscMessage.get(0).intValue();
    loudness1 = loudness1+80;
    if (loudness1<0) {
      loudS1=0;
    } else {
      //rescale
      loudS1 = int((loudness1*8)/3);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness2") == true ) {
    loudness2 = theOscMessage.get(0).intValue();
    if (loudness2<-80) {
      loudS2=0;
    } else {
      //rescale
      loudS2 = int(((loudness2*15)+2400)/18);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness3") == true ) {
    loudness3 = theOscMessage.get(0).intValue();
    if (loudness3<-80) {
      loudS3=0;
    } else {
      //rescale
      loudS3 = int(((loudness3*15)+2400)/18);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness4") == true ) {
    loudness4 = theOscMessage.get(0).intValue();
    if (loudness4<-80) {
      loudS4=0;
    } else {
      //rescale
      loudS4 = int(((loudness4*15)+2400)/18);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness5") == true ) {
    loudness5 = theOscMessage.get(0).intValue();
    if (loudness5<-80) {
      loudS5=0;
    } else {
      //rescale
      loudS5 = int(((loudness5*15)+2400)/18);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness6") == true ) {
    loudness6 = theOscMessage.get(0).intValue();
    if (loudness6<-80) {
      loudS6=0;
    } else {
      //rescale
      loudS6 = int(((loudness6*15)+2400)/18);
    }
  }
  if (theOscMessage.checkAddrPattern("/loudness7") == true ) {
    loudness7 = theOscMessage.get(0).intValue();
    if (loudness7<-80) {
      loudS7=0;
    } else {
      //rescale
      loudS7 = int(((loudness7*15)+2400)/18);
    }
  }
}

void mousePressed() {
  counter++;
  //sending a message back to ableton if the mouse is clicked
  if (counter == 1) {

    if (mouseX<300 && mouseY<200 ) {
      OscMessage myMessage= new OscMessage("/track");
      myMessage.add(1);
      /* send the message */
      oscP5.send(myMessage, myRemoteLocation);
    } else if (300<mouseX && mouseY<200) {
      OscMessage myMessage1= new OscMessage("/track1");
      myMessage1.add(1);
      oscP5.send(myMessage1, myRemoteLocation);
    } else if (mouseX<300 && mouseY>200 && mouseY<400) {
      OscMessage myMessage2= new OscMessage("/track2");
      myMessage2.add(1);
      oscP5.send(myMessage2, myRemoteLocation);
    } else if (300<mouseX && mouseY>200 && mouseY<400) {
      OscMessage myMessage3= new OscMessage("/track3");
      myMessage3.add(1);
      oscP5.send(myMessage3, myRemoteLocation);
    } else if (mouseX<300 && mouseY>400 && mouseY<600) {
      OscMessage myMessage4= new OscMessage("/track4");
      myMessage4.add(1);
      oscP5.send(myMessage4, myRemoteLocation);
    } else if (mouseX>300 && mouseY>400 && mouseY<600) {
      OscMessage myMessage5= new OscMessage("/track5");
      myMessage5.add(1);
      oscP5.send(myMessage5, myRemoteLocation);
    } else if (mouseX<300 && mouseY>600) {
      OscMessage myMessage6= new OscMessage("/track6");
      myMessage6.add(1);
      oscP5.send(myMessage6, myRemoteLocation);
    } else {
      OscMessage myMessage7= new OscMessage("/track7");
      myMessage7.add(1);
      oscP5.send(myMessage7, myRemoteLocation);
    }
  } else {
    //if couter == 2
    if (mouseX<300 && mouseY<200 ) {
      OscMessage myMessage= new OscMessage("/track");
      myMessage.add(0);
      /* send the message */
      oscP5.send(myMessage, myRemoteLocation);
      counter = 0;
    } else if (300<mouseX && mouseY<200) {
      OscMessage myMessage1= new OscMessage("/track1");
      myMessage1.add(0);
      oscP5.send(myMessage1, myRemoteLocation);
      counter = 0;
    } else if (mouseX<300 && mouseY>200 && mouseY<400) {
      OscMessage myMessage2= new OscMessage("/track2");
      myMessage2.add(0);
      oscP5.send(myMessage2, myRemoteLocation);
      counter = 0;
    } else if (300<mouseX && mouseY>200 && mouseY<400) {
      OscMessage myMessage3= new OscMessage("/track3");
      myMessage3.add(0);
      oscP5.send(myMessage3, myRemoteLocation);
      counter = 0;
    } else if (mouseX<300 && mouseY>400 && mouseY<600) {
      OscMessage myMessage4= new OscMessage("/track4");
      myMessage4.add(0);
      oscP5.send(myMessage4, myRemoteLocation);
      counter = 0;
    } else if (mouseX>300 && mouseY>400 && mouseY<600) {
      OscMessage myMessage5= new OscMessage("/track5");
      myMessage5.add(0);
      oscP5.send(myMessage5, myRemoteLocation);
      counter = 0;
    } else if (mouseX<300 && mouseY>600) {
      OscMessage myMessage6= new OscMessage("/track6");
      myMessage6.add(0);
      oscP5.send(myMessage6, myRemoteLocation);
      counter = 0;
    } else {
      OscMessage myMessage7= new OscMessage("/track7");
      myMessage7.add(0);
      oscP5.send(myMessage7, myRemoteLocation);
      counter = 0;
    }
  }
}
