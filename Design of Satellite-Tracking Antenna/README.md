# Automatic-Control-Systems
## Satellite-Tracking Antenna Control System Analysis

## Assignment Objectives
- Learn how to use MATLAB to generate an LTI state-space representation of a system.
- Evaluate the effect of additional poles and zeros on the time response of second-order systems.

## Assignment Details

### System Description
In this assignment, you will work on controlling the elevation of a satellite-tracking antenna. The system consists of an antenna with a moment of inertia (J) and damping (B), primarily resulting from bearing and aerodynamic friction and back electromotive force (emf) of the DC drive motor.

The equations of motion are defined as:
Jθ̈ + Bθ̇ = Tc

Where:
- J = 600,000 kg · m²
- B = 20,000 N · m · sec

The applied torque Tc is computed to track a reference command θr using feedback control:
Tc = K(θr − θ)

Where K is the feedback gain.

### Assignment Tasks
a. Evaluate the closed-loop transfer function.
b. Use MATLAB to generate the state-space representation for the closed-loop system for K = 1.
c. Determine the maximum value of K for a stable closed-loop system.
d. Find the maximum value of K for an overshoot (Mp) of less than 10%.
e. Determine values of K that result in a rise time of less than 80 seconds (ignoring Mp).
f. Plot the step response of the antenna system for K = 200, 400, 1000, and 2000 using MATLAB. Calculate overshoot and rise time from the plots.
g. Plot the zeros and poles locations for each value of K from part (e) and comment on their effects.
h. Calculate steady-state error for each value of K from part (e).
i. Use Simulink to add a pole to the second-order system and plot step responses for different pole locations. Record key response parameters.
j. Discuss the impact of a higher-order pole's proximity to the second-order system.
k. Use Simulink to add a zero to the second-order system and plot step responses for different zero locations. Record key response parameters.
l. Discuss the effect of a zero's proximity to the dominant second-order pole pair on the transient response.

