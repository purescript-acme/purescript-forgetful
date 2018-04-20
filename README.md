# purescript-forgetful

For any `Monad m`, `Forgetful m` is a `Functor`.

Don't use do-notation with it! It has forgotten it's a monad. If you need to convert between the two, there are some handy natural transformations, `forget` and `remember`.
