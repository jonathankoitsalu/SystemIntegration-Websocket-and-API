

# 4Wizards
https://github.com/4wizards

---

![](https://i.imgur.com/dwNOqmP.jpg)

---

## Workflow

* **Daily stand-ups**
* **Scrum-master:** Ahmed Alhasani
* **Scrum-board:** https://github.com/orgs/4wizards/projects/1
* **3 sprints (mål):**
1. Fungerande API mot databas 
2. Implementera Websocket
3. Optimera koden

---

## DEMO

http://coldfeet-react.herokuapp.com/

---

## Data/JSON:
```
{
"device":{
    "deviceName": "Joko",
    "mcuType": "esp32",
    "sensor": "dht11"
},
"location":{
    "latitude": "51.24", 
    "longitude": "16.43" 
},
"measurement":{
    "measurementTime":"1621943482",
    "temperature": 10.77,
    "humidity": 22.33
    }
}
```

---

## Databas:

![](https://i.imgur.com/FUs49zT.png)

---

## SQL


```
create table Device
(deviceId int not null auto_increment primary key DEFAULT NULL,
deviceName varchar(45) not null unique,
mcuType varchar(45) not null,
sensor varchar(45) not null);

create table Location
(locationId int not null auto_increment primary key,
locationName varchar(50) not null unique,
longitude varchar(50) not null,
latitude varchar(50) not null);

create table Measurement
(measurementId int not null auto_increment primary key,
deviceId int not null,
locationId int not null,
measurementTime bigint not null,
temperature decimal(4,2) not null,
humidity decimal(4,2) not null,
foreign key (deviceId) references Device(deviceId),
foreign key (locationId) references Location(locationId));
```

---

## Spring

* models
* Controller

---

## Spring
### API

* SendValuesToDB
* GetValuesFromDB

---

## ESP32/Arduino
* (Sensor)
* (JSON)
* HTTP Post
* Arduino Websocket

---

## Frontend

---

## The end
