//
//  StatusBar.Service.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import Foundation
import AppKit

class StatusBarManagementService: NSObject {
    var statusItem: NSStatusItem?
    var layoutViewModel: LayoutViewModel

    init(viewModel: LayoutViewModel) {
        self.layoutViewModel = viewModel
        super.init()
        DispatchQueue.main.async {
             self.setupStatusItem()
         }
    }
    
    @objc func openApp() {
        NSApp.activate(ignoringOtherApps: true)
    }

    @objc func exitApp() {
        NSApp.terminate(nil)
    }


    func setupStatusItem() {
        statusItem = NSStatusBar.system.statusItem(withLength: 28)
        
        if let button = statusItem?.button {
            if let appIcon = NSImage(named: NSImage.Name("AppIcon")) {
                appIcon.size = NSSize(width: 18, height: 18)
                button.image = appIcon
            }
            button.target = self
            button.action = #selector(showMenu)
        }
        
        let menu = NSMenu()
        
        for layout in layoutViewModel.layouts {
            let menuItem = NSMenuItem(
                title: "\(layout.name): \(layout.shortcut.description)",
                action: nil,
                keyEquivalent: ""
            )
            menu.addItem(menuItem)
        }
        
        let openMenuItem = NSMenuItem(
            title: "Open App",
            action: #selector(openApp),
            keyEquivalent: ""
        )
        
        openMenuItem.target = self
        menu.addItem(openMenuItem)

        let exitMenuItem = NSMenuItem(
            title: "Exit",
            action: #selector(exitApp),
            keyEquivalent: ""
        )
        
        exitMenuItem.target = self
        menu.addItem(exitMenuItem)
        
        statusItem?.menu = menu
    }


    @objc func showMenu() {
        statusItem?.menu?.popUp(positioning: nil, at: NSEvent.mouseLocation, in: nil)
    }
}
