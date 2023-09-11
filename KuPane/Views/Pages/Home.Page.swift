//
//  Home.Page.swift
//  KuPane
//
//  Created by kuku on 2023/9/11.
//

import SwiftUI

struct HomePage: View {
    private var isAccessibilityAllowed: Bool {
        return AXIsProcessTrustedWithOptions(
            [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: false] as CFDictionary)
    }
    
    private var appVersion: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "Unknown"
    }

    var body: some View {
        VStack {
            Image("home-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(12)
            
            Text("KuPane")
                .font(.headline)
                .fontWeight(.bold)
            Text("Version \(appVersion)")
                .font(.subheadline)
                .foregroundColor(.gray)
    
            
            if isAccessibilityAllowed {
                Text("KuPane helps you manage window layouts effortlessly. Use keyboard shortcuts to resize and position windows on the fly.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Text("Check the top menu bar for specific shortcuts!")
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 8)
            } else {
                Text("Please grant accessibility permissions in System Preferences to use KuPane.")
                    .multilineTextAlignment(.center)
                    .padding()
                Button("Open System Preferences") {
                    if let url = URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility") {
                        NSWorkspace.shared.open(url)
                    }
                }
                .padding()
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .frame(width: 240, height: 350)
        .background(Color(.windowBackgroundColor))
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}

