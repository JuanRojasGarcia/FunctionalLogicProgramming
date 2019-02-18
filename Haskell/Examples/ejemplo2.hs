size :: Int 
size = 12+13 

square :: Int -> Int
square n = n*n

choosegreting x = if x then "bye" else "hi"

threeequals :: Int -> Int -> Int ->       Bool
threeequals     a      b      c  =  (a==b) && (b==c)    

data Temp = Calor | Frio | Templado
 deriving Show
data Estacion = Primavera | Otonio | Verano | Invierno

tempnormal :: Estacion -> Temp
tempnormal    Verano   =  Calor
tempnormal    Invierno =  Frio
tempnormal       _     =  Templado 

-- Ejemplo con guardas

maxmio :: Int -> Int -> Int
maxmio     x      y   
 | x >= y = x 
 | otherwise = y 
 
-- reciba 3 numeros y me ocntesta con el mayor

maxminthree :: Int -> Int -> Int -> Int
maxminthree    x      y       z 
 | x >= y && x>=z = x 
 | y >= z = y
 | otherwise = z
 
-- num < 10 devolver num y entre 11 y 100 el dobre dle numero y otherwise el triple

numdotre :: Int -> Int
numdotre     x
 | x < 10  = x
 | x >= 11 && x <= 100 = x*x
 | otherwise = x*x*x

--reciba el indice de masa corporal y mande mensaje de flaco bien o gordo  

imc :: (RealFloat a) => a -> String
imc miIMC
 | miIMC <= 18  = "Estas bajo de peso"
 | miIMC <= 20  = "Estas de buen peso"
 | miIMC <= 30  = "Tienes problemas de peso"
 |otherwise     = "Sobrepeso morbido"