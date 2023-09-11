//
//  DefaultLayouts.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import Foundation
import AppKit

extension NSScreen {
    static var mainScreenBounds: CGRect {
        return NSScreen.main?.frame ?? CGRect.zero
    }
}


var defaultLayouts = [
    Layout(
        name: "Left Half",
        rect: CGRect(
            x: 0,
            y: 0,
            width: NSScreen.mainScreenBounds.width / 2,
            height: NSScreen.mainScreenBounds.height
        ),
        shortcut: Shortcut(
            key: Keycode.leftArrow,
            modifiers: [.control, .command]
        )
    ),
    Layout(
        name: "Right Half",
        rect: CGRect(
            x: NSScreen.mainScreenBounds.width / 2,
            y: 0,
            width: NSScreen.mainScreenBounds.width / 2,
            height: NSScreen.mainScreenBounds.height
        ),
        shortcut: Shortcut(
            key: Keycode.rightArrow,
            modifiers: [.control, .command]
        )
    ),
    Layout(
        name: "Right Top",
        rect: CGRect(
            x: NSScreen.mainScreenBounds.width / 2,
            y: 0,
            width: NSScreen.mainScreenBounds.width / 2,
            height: NSScreen.mainScreenBounds.height / 2
        ),
        shortcut: Shortcut(
            key: Keycode.i,
            modifiers: [.control, .command]
        )
    ),
    Layout(
        name: "Right Bottom",
        rect: CGRect(
            x: NSScreen.mainScreenBounds.width / 2,
            y: NSScreen.mainScreenBounds.height / 2,
            width: NSScreen.mainScreenBounds.width / 2,
            height: NSScreen.mainScreenBounds.height / 2
        ),
        shortcut: Shortcut(
            key: Keycode.k,
            modifiers: [.control, .command]
        )
    ),
    Layout(
        name: "Left Top",
        rect: CGRect(
            x: 0,
            y: 0,
            width: NSScreen.mainScreenBounds.width / 2,
            height: NSScreen.mainScreenBounds.height / 2
        ),
        shortcut: Shortcut(
            key: Keycode.u,
            modifiers: [.control, .command]
        )
    ),
    Layout(
        name: "Left Bottom",
        rect: CGRect(
            x: 0,
            y: NSScreen.mainScreenBounds.height / 2,
            width: NSScreen.mainScreenBounds.width / 2,
            height: NSScreen.mainScreenBounds.height / 2
        ),
        shortcut: Shortcut(
            key: Keycode.j,
            modifiers: [.control, .command]
        )
    ),
    Layout(
        name: "Center",
        rect: CGRect(
            x: 0,
            y: 0,
            width: NSScreen.mainScreenBounds.width,
            height: NSScreen.mainScreenBounds.height
        ),
        shortcut: Shortcut(
            key: Keycode.returnKey,
            modifiers: [.control, .command]
        )
    ),
]
