//
//  KeyboardListener.Service.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import AppKit
import Foundation

class KeyboardListenerService {
    var layoutViewModel: LayoutViewModel
    init(viewModel: LayoutViewModel) {
        self.layoutViewModel = viewModel
        self.setupKeyboardListeners()
    }
    
    private func setupKeyboardListeners() {
        NSEvent.addGlobalMonitorForEvents(matching: .keyDown) { (event) in
            if let matchedLayout = self.layoutViewModel.layouts.first(
                where: {
                    layout in
                    layout.shortcut.matches(
                        key: event.keyCode,
                        modifiers: event.modifierFlags.modifierKeys)
                    
                }
            ) {
                self.layoutViewModel.applyLayout(layout: matchedLayout)
            }
        }
        
    }
}
