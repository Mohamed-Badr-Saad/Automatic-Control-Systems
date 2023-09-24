# Automatic-Control-Systems
## Cruise Control System with PID Controller

## Assignment Description

In this assignment, you will explore the design and tuning of a cruise control system using a PID (Proportional-Integral-Derivative) controller. The objective is to model the car cruise control open-loop system, obtain its open-loop step response, and then fine-tune the PID controller to meet specific system specifications for a closed-loop negative unity feedback system.

## System Parameters
- Vehicle Mass (m): 1000 kg
- Damping Coefficient (b): 50 N·s/m

## Assignment Tasks

### Part 1: Open-Loop Modeling
1. Model the car cruise open-loop system based on the given Figure 9 and Equation (8).
2. Obtain the open-loop step response of the system using one of the following methods:
   - Use the attached MATLAB PID Simulator (if your MATLAB version supports it).
   - Write a MATLAB code to simulate the open-loop response.

### Part 2: Closed-Loop PID Controller Tuning
3. Adjust the PID controller parameters to achieve the following system specifications for a step response in a closed-loop, negative unity feedback system:
   - Rise time < 5 seconds
   - Overshoot < 10%
   - Steady-state error < 2%

4. Fine-tune the PID controller using one of the following methods:
   - Utilize the MATLAB PID Simulator (if supported by your MATLAB version) for controller tuning.
   - Write a MATLAB code to simulate the closed-loop response and tune the controller to meet the specifications.
