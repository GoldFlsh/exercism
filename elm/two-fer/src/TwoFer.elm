module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer name =
    case name of
        Nothing -> "One for you, one for me."
        Just name_ -> "One for " ++ name_ ++ ", one for me."

