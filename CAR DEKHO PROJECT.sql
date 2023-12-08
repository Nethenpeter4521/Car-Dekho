use cars;
-- READ DATA -- 
select * from car_dekho;

-- TOTAL CARS --
select count(*) from car_dekho;

-- MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023 --
select count(*) from car_dekho where year = 2023;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2020,2021,2022 --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- CLIENT ASKED TO PRINT TOTAL OF ALL CARS BY YEAR -- 
select year, count(*) from car_dekho group by year;

-- HOW MANY DIESEL CARS ARE THERE IN 2020? --
select count(*) from car_dekho where year=2020 and fuel="diesel";

-- HOW MANY PETROL CARS IN 2020? --
select count(*) from car_dekho where year=2020 and fuel="petrol";

-- FUEL(PETROL,DIESEL,CNG) BY YEAR WISE--
select fuel,year, count(*) from car_dekho where fuel in ("petrol","diesel","CNG") group by year,fuel;

-- WHICH YEAR HAS MORE THAN 100 CARS -- 
select year, count(*) from car_dekho group by year having count(*)>100 ;
select year,count(*) from car_dekho group by year having count(*) <50;

-- ALL CARS DETAIL 2015 TO 2023 --
select * from car_dekho where year between 2015 and 2023;
