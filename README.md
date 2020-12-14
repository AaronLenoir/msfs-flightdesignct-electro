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
