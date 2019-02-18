conjutionand :: Bool -> Bool -> Bool
conjutionand     t       f
 | t && f = True
 | otherwise = False
 
conjutionor :: Bool -> Bool -> Bool
conjutionor     t       f
 | t || f = True
 | otherwise = False