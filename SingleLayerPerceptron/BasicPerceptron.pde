perceptron brain;
Point[] points = new Point[100];

int trainingIndex = 0;

void settings(){
  size(700, 700);
}

void setup(){
  brain = new perceptron();
  
  for(int i = 0; i < points.length; i++){
  points[i] = new Point();
  }
  float[] inputs = {-1, 0.5};
  int output = brain.guess(inputs);
  int guess = brain.guess(inputs);
  println(guess);
}

void draw(){
background(255);
stroke(0);
line(0, 0, width, height);
for(Point pnt : points){
pnt.show();
}


for(Point pnt : points){
  float[] inputs = {pnt.x, pnt.y};
  int target = pnt.label;
  //brain.train(inputs, target);
  
  int guess = brain.guess(inputs);
  if(guess == target){
  fill(0, 255, 0);
  }else{
  fill(255, 0, 0);
  }
  noStroke();
  ellipse(pnt.x, pnt.y, 16, 16);
}

  Point training = points[trainingIndex];
  float[] inputs = {training.x, training.y};
  int target = training.label;
  brain.train(inputs, target);
  trainingIndex++;
  if(trainingIndex == points.length){
  trainingIndex = 0;
  }
  //training one point at a time
}