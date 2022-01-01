create table Device
(deviceId int not null auto_increment primary key,
deviceName varchar(45) not null,
mcuType varchar(45) not null,
sensor varchar(45) not null);

create table Location
(locationId int not null auto_increment primary key,
Longitude varchar(50) not null,
Latitude varchar(50) not null);

create table Measurement
(measurementId int not null auto_increment primary key,
deviceId int not null,
locationId int not null,
measurementTime datetime not null,
temperature decimal(4,2) not null,
humidity decimal(4,2) not null,
foreign key (deviceId) references Device(deviceId),
foreign key (locationId) references Location(locationId));