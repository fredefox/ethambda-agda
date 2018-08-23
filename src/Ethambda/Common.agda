module Ethambda.Common where

open import Eth.Prelude

infixr 3 _<<_
infixr 3 _<d>_

export
_<d>_ : String -> String -> String
v <d> w =
  if isNullStr v
  then v
  else v ++ " " ++ " " ++ w

export
ShowS : Type
ShowS = String -> String

export
_<d_ : String -> ShowS -> ShowS
s <d c = (s <.>) . c

  
