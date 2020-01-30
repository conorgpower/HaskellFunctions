-- Q.1
halve :: [a] -> ([a], [a])
halve a =   if (length a `mod` 2) == 0 then 
                splitAt (((length a) + 1) `div` 2) a
            else
                error "ERROR"    

--Q.2
thirdHT :: [a] -> a
thirdHT xs = head(tail(tail(xs)))

thirdIndex :: [a] -> a
thirdIndex a =  if length a >= 3 then
                    a !! 2
                else
                    error "No third element."

thirdPM :: [a] -> a
thirdPM (_:(_:(x:_))) = x

-- Q.3
-- tail(_:xs) = xs
safetailConditional :: [a] -> [a]
safetailConditional xs =    if null xs then 
                                []
                            else tail xs

safetailGuarded :: [a] -> [a]
safetailGuarded xs  | null xs   = []
                    | otherwise = tail xs

safetailPM :: [a] -> [a]
safetailPM [] = []
safetailPM xs = tail xs

-- Q.4
myOr :: Bool -> Bool -> Bool
False `myOr` a = a
True  `myOr` _ = True

-- Q.5
lucky :: Integral a => a-> String
lucky 7     = "Lucky you.. Proceed directly to buy a lottery ticket."
lucky 13    = "You, sadly are quite unlucky. Do not, under any circumstances, invest money today."
lucky _     = "Mmmm.... Can’t really say...."