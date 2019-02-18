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
