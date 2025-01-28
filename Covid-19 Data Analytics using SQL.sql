CREATE DATABASE COVID_19;
USE COVID_19;

#1. Top 10 Recovery Cases

SELECT 
    `Country Name`, 
    Recovered 
FROM `covid-19` 
ORDER BY Recovered DESC 
LIMIT 10;

#2. Confirmed Cases vs Deaths

SELECT 
    `Country Name`, 
    cases, 
    deathS 
FROM `covid-19`;
    
    
#3. Total Recovered and Death Cases by Country

SELECT 
    `Country Name`, 
    SUM(Recovered) AS total_recovered, 
    SUM(deaths) AS total_deaths 
FROM `covid-19` 
GROUP BY `Country Name`;
    
#4. Top 5 Countries by Confirmed Cases

SELECT 
    `Country Name`, 
    cases 
FROM 
    `covid-19` 
ORDER BY 
    cases DESC 
LIMIT 5;


#5. Top 10 Countries by Death Cases

SELECT 
    `Country Name`, 
    deaths 
FROM `covid-19` 
ORDER BY deaths DESC 
LIMIT 10;


#6. Global Totals (Recovered, Deaths, Confirmed)

SELECT 
    SUM(cases) AS total_confirmed, 
    SUM(recovered) AS total_recovered, 
    SUM(deaths) AS total_deaths 
FROM 
    `covid-19`;