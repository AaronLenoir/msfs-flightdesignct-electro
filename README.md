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
- Engine (Rotax 912 ULS) weight: 56.6 kg (124.8 lbs)
- Empty weight without engine: 211.4 kg (466 lbs)
- Weight available for E-811, Controller and batteries: 238.6 kg (526 lbs)
- Weight E-811: 22.7 kg (50 lbs)
- Weight controller: 8.1 kg (17.8 lbs)
- Weight batteries: 2 x 72 kg = 144 kg (317.5 lbs)
- Total weight drive-train + batteries: 174.8 kg (385.4 lbs)
- Weight left for payload: 238.6 kg - 174.8 kg = 63.8 kg (140.7 lbs)
  -> That is 1 light pilot, but we'll stick with this for now.

