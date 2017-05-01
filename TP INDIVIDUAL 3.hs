data Aventurero = UnAventurero String [(Int, Int)] deriving Show

pedro = (UnAventurero "Pedro" [(0,0),(0,1),(4,1),(1,10),(14,10),(14,4)]) --si

lau = (UnAventurero "Laura" [(0,0),(0,12),(6,12),(6,2),(9,2),(9,7)]) --no

tute = (UnAventurero "Matias" [(0,0),(8,0),(8,20),(20,20),(20,9),(17,9)])--no

juli = (UnAventurero "Julieta" [(0,0),(3,0),(3,18),(11,18),(11,2),(15,2)]) --si

fili = (UnAventurero "Filiberto" [(0,0),(2,0),(2,14),(12,14),(12,17),(18,17)]) --no


nombreAventurero (UnAventurero nombre _) = nombre

listaAventurero (UnAventurero _ lista) = lista


losAventureros = [pedro, lau, tute, juli, fili]


fstEntre10Y16 numero = 10 <= numero && numero <= 16 

sndEntre0Y6 numero = 0 <= numero && numero <= 6

tuplaMaldita unaTupla = sndEntre0Y6 (snd unaTupla) && fstEntre10Y16 (fst unaTupla)

alMenosUnaTuplaMaldita lista = any tuplaMaldita lista

estaMaldito  = alMenosUnaTuplaMaldita.listaAventurero

losMalditos lista = filter estaMaldito lista

nombresDeAventureros lista = map nombreAventurero lista

nombresMalditos = nombresDeAventureros.losMalditos
