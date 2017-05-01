--1)

data Arbol = UnArbol String Float Float Float deriving Show

nombreArbol (UnArbol nombre _ _ _) = nombre

altoArbol (UnArbol _ alto _ _) = alto

anchoArbol (UnArbol _ _ ancho _) = ancho

vitalidadArbol (UnArbol _ _ _ vitalidad) = vitalidad

--Pruebas con (UnArbol "Baobab" 5 10 1.7) y con (UnArbol "Mango" 10 15 1.8)


--2) 

alturaEntre6Y15 arbolito = altoArbol arbolito <= 15 && altoArbol arbolito >= 6

anchoMayorQueAlto arbolito = anchoArbol arbolito > altoArbol arbolito

vitalidadMayorQue1 = (> 1).vitalidadArbol 

esFrondoso arbolito = alturaEntre6Y15 arbolito && anchoMayorQueAlto arbolito && vitalidadMayorQue1 arbolito


--3)

coeficienteUniversalCrecimiento = 45

esperanzaDeVida = (/2).(* coeficienteUniversalCrecimiento).vitalidadArbol 


--4)

calcularVitalidad milimetros =  (*(1 + milimetros /100)) -- funcion que cambia la vitalidad

--lluvia
--lluvia milimetros (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre (alto +1) ancho (calcularVitalidad milimetros vitalidad)) 
--vitalidadLluviaAbundante (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre (alto +1) ancho (calcularVitalidad 150 vitalidad))
--lluviaTormenta (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre (alto +1) ancho (calcularVitalidad 100 vitalidad))
--granizo (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre (max(alto -2) alturaMinima) ancho vitalidad)
--altaHumedad (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre alto (ancho +1) vitalidad)


lluvia milimetros arbol = arbolNuevo (nombreArbol arbol) ((altoArbol arbol)+1) (anchoArbol arbol) (calcularVitalidad milimetros (vitalidadArbol arbol))

vitalidadLluviaAbundante arbol = lluvia 150 arbol

lluviaTormenta arbol = lluvia 100 arbol

granizo arbol = arbolNuevo (nombreArbol arbol) (granizoAltura (altoArbol arbol)) (anchoArbol arbol) (vitalidadArbol arbol)

altaHumedad arbol = arbolNuevo (nombreArbol arbol) (altoArbol arbol) ((anchoArbol arbol)+1) (vitalidadArbol arbol)


lluviaAumentaAltura = (+1).altoArbol --esta esta bien :D

--hago la de altura minima (max(alto -2) alturaMinima) <-- esa

granizoAltura altoArbol = (max(altoArbol -2) alturaMinima)-- FUNCIONAAA! :D

--con eso estaria calculo no? podemos hacer una funcion que concatene ambas?

--lluvia milimetros arbolito = (lluviaAumentaAltura).(calcularVitalidad milimetros vitalidadArbol) arbolito

arbolNuevo nombreNuevo altoNuevo anchoNuevo vitalidadNueva = (UnArbol nombreNuevo altoNuevo anchoNuevo vitalidadNueva)
--altaHumedad (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre alto (ancho +1) vitalidad)

--altoMas1 (UnArbol nombre alto ancho vitalidad) = arbolNuevo nombre alto (ancho+1) vitalidad
--altoMas1 arbol = arbolNuevo (nombreArbol arbol) ((altoArbol arbol)+1) (anchoArbol arbol) (vitalidadArbol arbol)

--que tal si lluvia es una concatenacion de esas dos?


--granizo
alturaMinima = 1



--tormenta


--tormenta = (granizo.lluviaTormenta) 

--5)


--vitalidadLluviaAbundante (UnArbol nombre alto ancho vitalidad) = (UnArbol nombre alto ancho (calcularVitalidad 150 vitalidad))




--esperanzaVidaLluvia = (esperanzaDeVida.vitalidadLluviaAbundante)

--diaBueno = (> 5).esperanzaVidaLluvia


--6)

--Suponiendo que durante el diaBueno también hubiera niebla, podríamos modificar las funciones de la siguiente manera:



--diaBuenoAltaHumedad = (vitalidadLluviaAbundante.altaHumedad)
