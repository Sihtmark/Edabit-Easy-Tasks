//: [Previous](@previous)

import Foundation

//7. Move Capital Letters to the Front

func capToFront(_ s: String) -> String {
    var str = ""
    var STR = ""
    for i in s {
        if i.isUppercase {
            STR.append(i)
        } else if i.isLowercase {
            str.append(i)
        }
    }
    return STR + str
}
(capToFront("hApPy"))
(capToFront("moveMENT"))
(capToFront("shOrtCAKE"))
