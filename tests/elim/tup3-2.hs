module Foo where

import Prelude hiding (fst, snd)

data Pair a b = Pair {fst :: a, snd :: b} 

{-@ bar :: Nat -> Nat @-}
bar :: Int -> Int
bar thing = aga + maga
  where
    t1 = (\z1 -> let mickey = z1
                     y1      = mickey
                     y1'     = mickey + 1
                 in Pair y1 y1') thing

    t2 = (\z2 -> let y2  = fst t1
                     y2' = snd t1
                 in Pair y2 y2') ()

    aga  = fst t2

    maga = snd t2


