module Data.Functor.Forgetful where

import Prelude

import Data.Newtype (class Newtype, un)

newtype Forgetful m a = Forget (m a)

derive instance newtypeForgetful :: Newtype (Forgetful m a) _

forget :: forall m. Monad m => m ~> Forgetful m
forget = Forget

remember :: forall m. Monad m => Forgetful m ~> m
remember = un Forget

instance functorForgetful :: Monad m => Functor (Forgetful m) where
  map f (Forget ma) = Forget (liftM1 f ma)
