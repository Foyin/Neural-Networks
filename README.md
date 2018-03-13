# Neural-Networks
Teaching myself about neural networks with processing(java) for visual understanding and javascript to buid a library

To run processing files download processing-3.3.6 from https://processing.org/download/


First off some notes-

Perceptron:-
An artificial representation of a neuron that takes in certain inputs and returns a single output

The perceptron algorithm:-
1. For every input multiply the input by its weights 
2. Sum all the weights for the inputs
3. Compute output of perceptron based on the sum passed through the activation function

Activation funtion:-
A function that returns a -1 or +1 based on the inputs and weights of the perceptron

(delta)weight = error * input
New weight = weight + error * input
error = desired output - guess output

Note:- void setup() runs once at the beginning of the program
       void draw() runs every frame(60 frames per second by default). So void draw runs 60 times each second 

Supervised learing algorithm:-
1. Provide the perceptron with inputs for which there is a known answer
2. Ask the perceptron to guess the answer
3. Compute the error(did it get the answer right or wrong?)
4. Adjust the weights according to the error
5. Return to step one and repeat.
