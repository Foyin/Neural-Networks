//activation function
int sign(float n){
  if(n >= 0){
  return 1;
  }
  else{
  return -1;
  }
}

class perceptron{
  float[] weights;// in array for variable num weights
  float lr = 0.001; //learning rate
  //constructor
  perceptron(int n) {
    weights = new float[n];
    //initialize random weights
    for (int i = 0; i < weights.length; i++){
      weights[i] = random(-1, 1);
    
    }
  }
  
  int guess(float[] inputs){
    float sum = 0;
    for (int i = 0; i < weights.length; i++){
      sum += inputs[i] * weights[i];
    }
    int output = sign(sum);
    return output;
  }
  
  void train(float[] inputs, int target){
  int guess = guess(inputs);
  int error = target - guess; 
  //compute weights
  for(int i = 0; i < weights.length; i++){
    weights[i] += error*inputs[i];
    }
  }
  
  float guessY(float x){
    //float m = weights[1] / weights[0];
    //float b = weights[2];
    //return m * x + b;
    float w0 = weights[0];
    float w1 = weights[1];
    float w2 = weights[2];
    
    return -(w2/w1) - (w0/w1) * x;
  }
}