module Bob exposing (hey)
import String exposing (toUpper, endsWith, any, trim)
import Char exposing (isAlpha)

hey : String -> String
hey remark =
    let
        trimRemark = trim remark
    in
    if isLoud trimRemark && isQuestion trimRemark then "Calm down, I know what I'm doing!"
    else if isLoud trimRemark then "Whoa, chill out!"
    else if isQuestion trimRemark then "Sure."
    else if trimRemark == "" then "Fine. Be that way!"
    else "Whatever."


isLoud: String -> Bool
isLoud remark = toUpper remark == remark && containsAlpha remark

containsAlpha: String -> Bool
containsAlpha remark = any isAlpha remark

isQuestion: String -> Bool
isQuestion remark = endsWith "?" remark