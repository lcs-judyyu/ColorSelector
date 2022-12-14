//
//  ColorSelectorApp.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-27.
//

import SwiftUI

@main
struct ColorSelectorApp: App {
    
    //MARK: Stored Propertyies
    // Tracks the list of saved palettes
    // Source of truth
    @State private var savedPalettes: [SavedPalette] = []
    
    //MARK: Computed Propertyies
    
    
    // Windows
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView(savedPalettes: $savedPalettes)
                    .tabItem {
                        Image(systemName: "swatchpalette")
                        Text("Browse")
                    }
                
                SavedPalettesView(savedPalettes: $savedPalettes)
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Review")
                    }
                    
            }
            
            
        }
    }
}
