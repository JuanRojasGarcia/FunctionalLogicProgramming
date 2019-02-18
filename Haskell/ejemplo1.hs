size :: Int 
size = 12+13 

square :: Int -> Int
square n = n*n

choosegreting x = if x then "bye" else "hi"

threeequals :: Int -> Int -> Int ->       Bool
threeequals     a      b      c  =  (a==b) && (b==c)    

data temp = calor | frio | templado
data estacion = primavera | otonio | verano | invierno

tampnormal :: estacion -> templado
tempnormal verano = calor
tempnormal invierno = frio
tempnormal _ = templado 

