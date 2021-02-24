$communityFolder = "C:\Users\$($env:UserName)\AppData\Roaming\Microsoft Flight Simulator\Packages\Community"

robocopy '..\..\msfs-flightdesignct-electro' $communityFolder\msfs-flightdesignct-electro /MIR /E /XD .git Scripts