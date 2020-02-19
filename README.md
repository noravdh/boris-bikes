This project will emulate the boris bike system. The program will include all the docking stations, bikes, and infrastructure (repair staff, and so on) required.

The program has two classes:

1. Docking Station
When you make a new docking station, you can pass in the capacity.
If you don't specify the capacity, it defaults to 20 bikes.
The new station will start as empty.
You can use the following methods on the docking station:
  - release_bike
    This method will only work if there are bikes in the station, and the last added bike isn't broken
  - dock(bike)
    When you dock a bike, you need to pass in an instance of the bike class.
    You can only dock a bike, when the station isn't full.

2. Bike
You can use one method on bike:
  - report_broken
  When you report a bike as broken, you will still be able to dock it, but it then won't be available for release anymore. 