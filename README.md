Just messing around at the moment. Might delete later.

The goal is to replace the piston engine in the Flight Design CTLS with Pepistrel's E-811 electro motor used in their Velis Electro. But since MSFS doesn't have a model for electric engines that's a challenge.

Sources:

- A: https://web.archive.org/web/20180105053436/http://www.flightdesign.com/ctsl
- B: https://www.pmaviation.co.uk/download/upload_pdf/CTSW&SL%20manual%202.0.pdf
- C: https://www.pipistrel-aircraft.com/aircraft/electric-flight/velis-electro-easa-tc/#tab-id-2
- D: https://www.pipistrel-aircraft.com/aircraft/electric-flight/e-811/#tab-id-2
- E: https://www.pipistrel-aircraft.com/aircraft/electric-flight/batteries-systems-and-bms/

## Implementation

### Weight

Working within the ultralight limitation for ultralights without parachute: 

- Maximum Take-off Weight: 450 kg, 992 lbs

The original CTSL has an empty weight of 268 kg (590 lbs), including the engine but excluding the fuel.

For the electric version, batteries are included in the empty weight, at least such is the case with the Velis Electro (which is NOT an ultralight).

So:

- Original empty weight: 268 kg (590 lbs)
  - Minus Rotax 912 ULS: 268 - 56.6 = 211.4 kg
  - Plus E-811: 211.4 kg + 22.7 kg = 234.1 kg
  - Plus Controller: 234.1 kg + 8.1 kg = 242.2 kg
  - Plus batteries: 242.2 kg + (2 x 72 kg) = 386.2 kg
- New empty weight: 386.2 kg (851.43 lbs)
- Maximum Take-off Weight: 450 kg
- Maximum payload (incl. pilot): 450 kg - 386.2 kg = 63.8 kg (140.7 lbs)

So, to stay withing Ultralight limitations, we can allow 1 POB and that POB has to weigh less than 63.8 kg.

Moved Empty CG 0.75 feet more AFT. Need to verify if this is actually possible with battery placement...

### Fuel

We don't lose any weight when consuming energy from the batteries. To simulate this, we equate a tiny amount of fuel to 100% battery charge and modify the fuel consumption accordingly.

This way MSFS shows correct battery % while not losing weight (except a tiny amount) as we consume energy.

Velis Electro, at 35 kW has an endurance of 50 minutes + VFR reserve. So let's take 60 minutes.

Used fuel flow scalar to rescale fuel flow so that at 35 kW engine input, we get about 1 hour of autonomy.

Note, the fuel tanks are now 0.01 lbs, with 100% usable fuel.

Still need to customise the engine efficiency to match more closely the electric engine, at the moment it is still the Rotax 912 ULS.