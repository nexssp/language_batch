import json

let element = "Hydrogen"
let atomicNumber = 1

let jsonObject = %* {"element": element, "atomicNumber": atomicNumber}
# This will print {"element":"Hydrogen", "atomicNumber": 1}
echo $jsonObject