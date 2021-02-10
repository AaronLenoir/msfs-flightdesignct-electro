The goal of this project to replace the piston engine in the Flight Design CTLS with Pepistrel's E-811 electro motor used in their Velis Electro. But since MSFS doesn't have a model for electric engines that's a challenge.

# Implementation

## Empty Weight

Original CTSL:

* Maximum empty weight (no parachute): 268 kg (590 lbs)

This includes the engine, but not the fuel.

For the electric version, batteries are included in the empty weight, at least such is the case with the Velis Electro which we use as a reference.

Removing the Rotax engine and replacing it with the Pipistrel E-811, we get the following new empty weight:

* 386.2 kg (851.43 lbs)

Details:

| Item                       | Weight (kg)  |
| :------------------------- |-------------:|
| **Original empty weight**  | **268.0**    |
| Remove Rotax 912 ULS       | - 56.6       |
| Add E-811                  | + 22.7       |
| Add E-811 Controller       | + 8.1        |
| Add Batteries (72 kg x 2)  | + 144.0      |
| **New empty weight**       | **386.2**    |

## Empty Center of Gravity (CG)

The original aircraft has a CG between 22% and 38%.

Fully empty, the aircraft current has the CG at 8%.

Moving the CG position 0.8 ft more AFT solves this:

* Empty CG: 29%
* MTOW CG: 38%

Though not verified in terms of dimensions of the batteries and the airframe, I am going to assume this can be configured based on the positioning of the batteries and even the controller.

## Maximum Take-off Weight

An 2-seater ultralight, without a parachute, must have a maximum take-off weight of 450 kg (992 lbs).

Given the empty weight of 386.2 kg, we have a maximum payload (including the pilot!) of 63.8 kg (140.6 lbs).

## Weight Summary

|              |                            |
| -------------|----------------------------|
| Empty Weight | 386.2 kg (851.4 lbs)       |
| MTOW         | 450 kg (992 lbs)           |
| Payload      | 63.8 kg (140.6 lbs)        |
| CG Range     | 22% - 38%                  |


