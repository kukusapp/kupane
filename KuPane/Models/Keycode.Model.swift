//
//  Model/Keycode.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import Foundation

struct Keycode {
    static let returnKey                 : UInt16 = 0x24
    static let tab                       : UInt16 = 0x30
    static let space                     : UInt16 = 0x31
    static let delete                    : UInt16 = 0x33
    static let escape                    : UInt16 = 0x35
    static let command                   : UInt16 = 0x37
    static let shift                     : UInt16 = 0x38
    static let capsLock                  : UInt16 = 0x39
    static let option                    : UInt16 = 0x3A
    static let control                   : UInt16 = 0x3B
    static let rightCommand              : UInt16 = 0x36
    static let rightShift                : UInt16 = 0x3C
    static let rightOption               : UInt16 = 0x3D
    static let rightControl              : UInt16 = 0x3E
    static let leftArrow                 : UInt16 = 0x7B
    static let rightArrow                : UInt16 = 0x7C
    static let downArrow                 : UInt16 = 0x7D
    static let upArrow                   : UInt16 = 0x7E
    static let volumeUp                  : UInt16 = 0x48
    static let volumeDown                : UInt16 = 0x49
    static let mute                      : UInt16 = 0x4A
    static let help                      : UInt16 = 0x72
    static let home                      : UInt16 = 0x73
    static let pageUp                    : UInt16 = 0x74
    static let forwardDelete             : UInt16 = 0x75
    static let end                       : UInt16 = 0x77
    static let pageDown                  : UInt16 = 0x79
    static let function                  : UInt16 = 0x3F
    static let f1                        : UInt16 = 0x7A
    static let f2                        : UInt16 = 0x78
    static let f4                        : UInt16 = 0x76
    static let f5                        : UInt16 = 0x60
    static let f6                        : UInt16 = 0x61
    static let f7                        : UInt16 = 0x62
    static let f3                        : UInt16 = 0x63
    static let f8                        : UInt16 = 0x64
    static let f9                        : UInt16 = 0x65
    static let f10                       : UInt16 = 0x6D
    static let f11                       : UInt16 = 0x67
    static let f12                       : UInt16 = 0x6F
    static let f13                       : UInt16 = 0x69
    static let f14                       : UInt16 = 0x6B
    static let f15                       : UInt16 = 0x71
    static let f16                       : UInt16 = 0x6A
    static let f17                       : UInt16 = 0x40
    static let f18                       : UInt16 = 0x4F
    static let f19                       : UInt16 = 0x50
    static let f20                       : UInt16 = 0x5A

    static let a                         : UInt16 = 0x00
    static let b                         : UInt16 = 0x0B
    static let c                         : UInt16 = 0x08
    static let d                         : UInt16 = 0x02
    static let e                         : UInt16 = 0x0E
    static let f                         : UInt16 = 0x03
    static let g                         : UInt16 = 0x05
    static let h                         : UInt16 = 0x04
    static let i                         : UInt16 = 0x22
    static let j                         : UInt16 = 0x26
    static let k                         : UInt16 = 0x28
    static let l                         : UInt16 = 0x25
    static let m                         : UInt16 = 0x2E
    static let n                         : UInt16 = 0x2D
    static let o                         : UInt16 = 0x1F
    static let p                         : UInt16 = 0x23
    static let q                         : UInt16 = 0x0C
    static let r                         : UInt16 = 0x0F
    static let s                         : UInt16 = 0x01
    static let t                         : UInt16 = 0x11
    static let u                         : UInt16 = 0x20
    static let v                         : UInt16 = 0x09
    static let w                         : UInt16 = 0x0D
    static let x                         : UInt16 = 0x07
    static let y                         : UInt16 = 0x10
    static let z                         : UInt16 = 0x06

    static let zero                      : UInt16 = 0x1D
    static let one                       : UInt16 = 0x12
    static let two                       : UInt16 = 0x13
    static let three                     : UInt16 = 0x14
    static let four                      : UInt16 = 0x15
    static let five                      : UInt16 = 0x17
    static let six                       : UInt16 = 0x16
    static let seven                     : UInt16 = 0x1A
    static let eight                     : UInt16 = 0x1C
    static let nine                      : UInt16 = 0x19
    
    static let equals                    : UInt16 = 0x18
    static let minus                     : UInt16 = 0x1B
    static let semicolon                 : UInt16 = 0x29
    static let apostrophe                : UInt16 = 0x27
    static let comma                     : UInt16 = 0x2B
    static let period                    : UInt16 = 0x2F
    static let forwardSlash              : UInt16 = 0x2C
    static let backslash                 : UInt16 = 0x2A
    static let grave                     : UInt16 = 0x32
    static let leftBracket               : UInt16 = 0x21
    static let rightBracket              : UInt16 = 0x1E
    
    static let keypadDecimal             : UInt16 = 0x41
    static let keypadMultiply            : UInt16 = 0x43
    static let keypadPlus                : UInt16 = 0x45
    static let keypadClear               : UInt16 = 0x47
    static let keypadDivide              : UInt16 = 0x4B
    static let keypadEnter               : UInt16 = 0x4C
    static let keypadMinus               : UInt16 = 0x4E
    static let keypadEquals              : UInt16 = 0x51
    static let keypad0                   : UInt16 = 0x52
    static let keypad1                   : UInt16 = 0x53
    static let keypad2                   : UInt16 = 0x54
    static let keypad3                   : UInt16 = 0x55
    static let keypad4                   : UInt16 = 0x56
    static let keypad5                   : UInt16 = 0x57
    static let keypad6                   : UInt16 = 0x58
    static let keypad7                   : UInt16 = 0x59
    static let keypad8                   : UInt16 = 0x5B
    static let keypad9                   : UInt16 = 0x5C
}

extension Keycode {
    static func description(for keycode: UInt16) -> String {
        switch keycode {
        case returnKey: return "⏎"
        case tab: return "⇥"
        case space: return "Space"
        case delete: return "⌫"
        case escape: return "⎋"
        case command: return "⌘"
        case shift: return "⇧"
        case capsLock: return "⇪"
        case option: return "⌥"
        case control: return "⌃"
        case rightCommand: return "⌘"
        case rightShift: return "⇧"
        case rightOption: return "⌥"
        case rightControl: return "⌃"
        case leftArrow: return "←"
        case rightArrow: return "→"
        case downArrow: return "↓"
        case upArrow: return "↑"
        case volumeUp: return "Volume Up"
        case volumeDown: return "Volume Down"
        case mute: return "Mute"
        case function: return "fn"
        case help: return "Help"
        case home: return "Home"
        case pageUp: return "Page Up"
        case forwardDelete: return "Forward Delete"
        case end: return "End"
        case pageDown: return "Page Down"
        case function: return "Function"
        case f1: return "F1"
        case f2: return "F2"
        case f3: return "F3"
        case f4: return "F4"
        case f5: return "F5"
        case f6: return "F6"
        case f7: return "F7"
        case f8: return "F8"
        case f9: return "F9"
        case f10: return "F10"
        case f11: return "F11"
        case f12: return "F12"
        case f13: return "F13"
        case f14: return "F14"
        case f15: return "F15"
        case f16: return "F16"
        case f17: return "F17"
        case f18: return "F18"
        case f19: return "F19"
        case f20: return "F20"
        case a: return "A"
        case b: return "B"
        case c: return "C"
        case d: return "D"
        case e: return "E"
        case f: return "F"
        case g: return "G"
        case h: return "H"
        case i: return "I"
        case j: return "J"
        case k: return "K"
        case l: return "L"
        case m: return "M"
        case n: return "N"
        case o: return "O"
        case p: return "P"
        case q: return "Q"
        case r: return "R"
        case s: return "S"
        case t: return "T"
        case u: return "U"
        case v: return "V"
        case w: return "W"
        case x: return "X"
        case y: return "Y"
        case z: return "Z"
        case zero: return "0"
        case one: return "1"
        case two: return "2"
        case three: return "3"
        case four: return "4"
        case five: return "5"
        case six: return "6"
        case seven: return "7"
        case eight: return "8"
        case nine: return "9"
        case equals: return "="
        case minus: return "-"
        case semicolon: return ";"
        case apostrophe: return "'"
        case comma: return ","
        case period: return "."
        case forwardSlash: return "/"
        case backslash: return "\\"
        case grave: return "`"
        case leftBracket: return "["
        case rightBracket: return "]"
        case keypadDecimal: return "Keypad ."
        case keypadMultiply: return "Keypad *"
        case keypadPlus: return "Keypad +"
        case keypadClear: return "Keypad Clear"
        case keypadDivide: return "Keypad /"
        case keypadEnter: return "Keypad Enter"
        case keypadMinus: return "Keypad -"
        case keypadEquals: return "Keypad ="
        case keypad0: return "Keypad 0"
        case keypad1: return "Keypad 1"
        case keypad2: return "Keypad 2"
        case keypad3: return "Keypad 3"
        case keypad4: return "Keypad 4"
        case keypad5: return "Keypad 5"
        case keypad6: return "Keypad 6"
        case keypad7: return "Keypad 7"
        case keypad8: return "Keypad 8"
        case keypad9: return "Keypad 9"
        default: return "Unknown Key"
        }
    }
}
