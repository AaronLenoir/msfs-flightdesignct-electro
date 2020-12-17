Just messing around at the moment. Might delete later.

The goal is to replace the piston engine in the Flight Design CTLS with Pepistrel's E-811 electro motor used in their Velis Electro. But since MSFS doesn't have a model for electric engines that's a challenge.

Sources:

- A: https://web.archive.org/web/20180105053436/http://www.flightdesign.com/ctsl
- B: https://www.pmaviation.co.uk/download/upload_pdf/CTSW&SL%20manual%202.0.pdf
- C: https://www.pipistrel-aircraft.com/aircraft/electric-flight/velis-electro-easa-tc/#tab-id-2
- D: https://www.pipistrel-aircraft.com/aircraft/electric-flight/e-811/#tab-id-2
- E: https://www.pipistrel-aircraft.com/aircraft/electric-flight/batteries-systems-and-bms/
- F: https://www.flyrotax.com/produkte/detail/rotax-912-ul-a-f.html
- G: http://www.aero-hesbaye.be/ROTAX/912UL.html
- H: https://www.pipistrel-aircraft.com/aircraft/other-products/propellers/
- I: http://www.bulmf.be/index.php/nl/ulm-vliegen-resp/regelgeving/239-koninklijk-besluit-25-mei-1999

## Implementation

### Weight

Working within the ultralight limitation for 2-seat ultralights with parachute: 

- Maximum Take-off Weight: 472.5 kg, 1041.68 lbs

The original CTSL has an empty weight of 268 kg (590 lbs), including the engine but excluding the fuel.

For the electric version, batteries are included in the empty weight, at least such is the case with the Velis Electro.

So:

- Original empty weight: 268 kg (590 lbs)
  - Minus Rotax 912 ULS: 268 - 56.6 = 211.4 kg
  - Plus E-811: 211.4 kg + 22.7 kg = 234.1 kg
  - Plus Controller: 234.1 kg + 8.1 kg = 242.2 kg
  - Plus batteries: 242.2 kg + (2 x 72 kg) = 386.2 kg
- New empty weight: 386.2 kg (851.43 lbs)
- Maximum Take-off Weight: 472.5 kg (1041.68 lbs)
- Maximum payload (incl. pilot): 472.5 kg - 386.2 kg = 86.3 kg (190.25 lbs)

Sadly, this doesn't seem to be enough to accomodate two pilots. This would put us in the one-seat ultralight with parachute, but that gives a maximum take-off weight 315 kg which is less than the empty weight.

To be good, I would like 70 kg extra payload room. But that doesn't seem possible here, unless we throw out one complete battery pack. For now, we'll stick with the 2-seater ultralight. But we are technically too heavy.

Moved Empty CG 0.75 feet more AFT. Need to verify if this is actually possible with battery placement...

Positioned the single POB to the middle, to avoid imbalance. The 3D model has not been modified in any way ... 

### Fuel

We don't lose any weight when consuming energy from the batteries. To simulate this, we equate a tiny amount of fuel to 100% battery charge and modify the fuel consumption accordingly.

This way MSFS shows correct battery % while not losing weight (except a tiny amount) as we consume energy.

Velis Electro, at 35 kW has an endurance of 50 minutes + VFR reserve. So let's take 60 minutes.

Used fuel flow scalar to rescale fuel flow so that at 35 kW engine input, we get about 1 hour of autonomy.

Note, the fuel tanks are now 0.01 lbs, with 100% usable fuel.

### Engine

Trying to change the piston engine to have somewhat properties like the E-811, with a constant torque curve preferably.

Not finished yet, but mostly this means giving the piston engine unrealistic efficiency.