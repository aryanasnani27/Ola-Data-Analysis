Create Database Ola;
use ola;
Create view Successful_Bookings as
Select * from bookings where Booking_status="Success";
Select * from Successful_Bookings;

Create view ride_distance_for_each_vehicle as
Select Vehicle_Type ,Avg(Ride_Distance) 
as Avg_Distance from Bookings
Group By Vehicle_Type;
Select * from ride_distance_for_each_vehicle;

Create view Canceled_rides_by_customers as
select count(*) from bookings where Booking_Status="Canceled by Customer";


Create view Top_5_Customers as 
select Customer_ID, count(Booking_ID) as total_rides
from bookings 
group by Customer_ID
order by total_rides desc limit 5;
Select * from Top_5_Customers;

Create view Canceled_by_drivers_P_C_Issues as
Select count(*) from bookings 
where Canceled_Rides_by_Driver="Personal & Car related issue";
Select * from Canceled_by_drivers_P_C_Issues;

Create view Max_Min_Driver_Rating as
Select max(Driver_Ratings) as max_ratings,
min(Driver_Ratings) as min_ratings
from bookings where Vehicle_Type="Prime Sedan";
Select * from Max_Min_Driver_Rating;

Create view UPI_Payment as
Select * from bookings where Payment_Method="UPI";
Select * from UPI_Payment;

Create view  Avg_Cust_Ratings as
Select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating 
from bookings
group by Vehicle_Type;
Select * from Avg_Cust_Ratings;


Create view total_successful_ride_Value as
Select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status="Success";
Select * from total_successful_ride_Value;

Create view Incomplete_Rides_Reasons as
Select Booking_ID,Incomplete_Rides_Reason
from bookings
where Incomplete_Rides="Yes";
Select * from Incomplete_Rides_Reasons;