# Autonomous_Drone_Driving
## Created July 14, 2019
### Problem statement
Is it possible to drive a drone autonomously with radar? 

#### Requirements
- Drone autonomous driving
- Distance measurement with the radar
- Communication between radar system and the drone


### Drone Autonomous driving
#### Current Status
July 14, 2019: 


#### What to do
- Geofencing 
- Retrieving GPS data
```
DJIKeyManager *keyManager = [DJISDKManager keyManager];
DJIFlightControllerKey *locationKey = [DJIFlightControllerKey keyWithParam:DJIFlightControllerParamAircraftLocation];
```
- Testing the drone driving repeatedly
  - Hot point mission?
  ```
https://developer.dji.com/mobile-sdk/documentation/introduction/component-guide-missions.html
```
- Testing Radar
- Communcation between the drone and radar (Spark: Wifi, Phantom 4: Lightbridge/Wifi? -> If the phantom 4 supports Wi-fi, ask DJI whether they support TCP protocol)
  - Server-Client Binding (Should it be bi-directional?)
- Calibration
- 4 directional driving drone
