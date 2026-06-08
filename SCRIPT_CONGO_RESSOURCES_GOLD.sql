***/1

SELECT s.nom,COUNT(e.id_engin)AS nb_engins
FROM sites s 
INNER JOIN engins e
ON s.id_site = e.id_site 
GROUP BY e.id_site ;

***/2
SELECT date_prod,tonnage_brut
FROM production p 
WHERE p.tonnage_brut = 0

***/3
SELECT e.id_engin,s.nom 
FROM sites s 
INNER JOIN engins e 
ON s.id_site = e.id_site 

***/4
SELECT p.type_minerai,s.province, SUM(p.tonnage_brut)
FROM production p 
INNER JOIN sites s 
ON p.id_site = s.id_site 
GROUP BY p.type_minerai,s.province 

***/5
SELECT SUM(tonnage_brut*teneur) AS tonnage_pur
FROM production p 

***/6
SELECT SUM(tonnage_vendu*prix_unitaire_usd) AS CA
FROM exportations e 

***/7
SELECT s.nom, AVG(p.teneur) AS moyenne_teneur
FROM sites s 
INNER JOIN production p 
ON s.id_site = p.id_site 
GROUP BY s.nom 
HAVING (moyenne_teneur)<2.5