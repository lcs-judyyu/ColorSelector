//
//  SavedPalettesView.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-28.
//

import SwiftUI

struct SavedPalettesView: View {
    
    //MARK: Stored Properties
    @State private var selectedHue = 0.0
    
    // Tracks the list of saved palettes
    // Derived value
    @Binding var savedPalettes: [SavedPalette]
    
    //MARK: Computed Properties
    //The selected hue expressed as a value between 0 and 1.0
    private var hue: Double {
        return selectedHue / 360.0
    }
    
    //Make the colour that SwiftUI will Use to set the background of the colour swatch
    private var baseColour: Color {
        return Color(hue: hue, saturation: 0.8, brightness: 0.9)
    }
    
    
    //Interface
    var body: some View {
        VStack {
            
            HStack {
                ColorSwatchView(color: baseColour, size: 100)
                
                VStack(alignment: .leading) {
                    
                    Text("Hue")
                        .bold()
                    
                    Text("\(selectedHue.formatted(.number.precision(.fractionLength(1))))°")
                    
                    Slider(value: $selectedHue,
                           in: 0...360,
                           label: { Text("Hue") },
                           minimumValueLabel: { Text("0") },
                           maximumValueLabel: { Text("360") })
                    
                }
                
                Spacer()
                
            }
            
            //Show the saved palettes
            List(savedPalettes){ currentPalette in
                
                MonochromaticPaletteView(selectedHue: currentPalette.hue * 360)
                
            }
            
            Spacer()
        }
        .padding()
    }
}

struct SavedPalettesView_Previews: PreviewProvider {
    
    static var previews: some View {
        LiveSavedPalettesView()
    }
    
    // create a view to simulate the app level entry point -> ContentView connection
    struct LiveSavedPalettesView: View {
        
        // populate some palettes to start
        @State var palettes: [SavedPalette] = examplePalettes
        
        var body: some View {
            SavedPalettesView(savedPalettes: $palettes)
        }
        
    }
    
}

