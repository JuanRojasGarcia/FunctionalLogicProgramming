-- Fichas del Domino (Listas)



-- Generador que imprima las tablas de multiplicar del 1 al 5, Ejemplo x y = x * y [(1,1,1), (1,2,2),(1,3,3)
--tablaMultiplicar :: Int -> Int -> Int
--tablaMultiplicar    x      y   = x*y


-- Listas

-- Factores
factores :: Int -> [Int]
factores n = [x | x <- [1..n], mod n x == 0] -- Ejemplo factores 15 [1,3,5,15]

-- Usando Guardas para definir una funcion que regrese la lista de todos los primos 

-- Primos 
primos :: Int -> Bool 
primos n = factores n == [1,n]

-- Primos Pro
primosPro:: Int -> [Int]
primosPro n = [x | x <- [2..n], primos x]

-- usando zip podemos definir una funcion que regrese la lista de todos los pares de adjacent elementos de una lista

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

-- Zip = toma una lista y hace parejas hasta que llege hasta n, Ejemplo zip [1..5] [6..15] -> [(1,6),(2,7), etc]
-- x
-- xs -> Lista
-- xss -> Lista de lista 

-- comandos predifinidas en haskell para sacar elementos de una lista
-- head 
-- tail
-- init
-- last


-- usando zip podemos definir una funcion que regrese la lista de todas las posiciones  de un valor en una lista
positions :: Eq a => a -> [a] -> [Int]
positions x xs = 
 [i | (x',i) <- zip xs [0..], x == x'] --por ejemplo, posiitions 0 [1,0,0,1,0,1,1,0]
 
-- String de Comprencion 
--lista de comprecion puede tambier ser usado para definir funiciones oen string, como contador muchas veces un caracter occurre en un string 

count :: Char -> String -> Int 
count x xs = length [x' | x' <- xs, x == x'] -- For example, count 's' "Mississippi"


--Ejercicios 

--1)
--Un triple (x,y,z) de enteros positivos es llamado pitagoras si x^2 + y^2 = z^2, usando una cmprecion de listas, define una funcion

pyths :: Int -> [(Int,Int,Int)]
-- que mapee un entero n para todos multiples con componentes in [1..n], por ejemplo -> pyths 5 [(3,4,5),(4,3,5)]

pyths n = [(x,y,z) | x<-[1..n], y<-[1..n], z<-[1..n], x^2 + y^2 == z^2]

--2)

perfects 
--que retorna la lista de todos los numeros perfectos up to a given limit, por ejemplo -> perfects 500 
