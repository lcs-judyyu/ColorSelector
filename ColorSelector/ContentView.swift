//
//  ContentView.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State private var selectedHue = 0.0
    
    // Tracks the list of saved palettes
    @State private var savedPalettes: [SavedPalette] = []
    
    //MARK: Computed Properties
    
    //The selected hue expressed as a value between 0 and 1.0
    private var hue: Double {
        return selectedHue / 360.0
    }
    
    //Make the colour that SwiftUI will Use to set the background of the colour swatch
    private var baseColour: Color {
        return Color(hue: hue, saturation: 0.8, brightness: 0.9)
    }
    
    private var darkerColour: Color {
        return Color(hue: hue, saturation: 0.8, brightness: 0.6)
    }
    
    private var darkestColour: Color {
        return Color(hue: hue, saturation: 0.8, brightness: 0.3)
    }
    
    
    //Interface
    var body: some View {
        VStack {
            
            HStack {
                VStack {
                    
                }
                .frame(width: 100, height: 100)
                .background(baseColour)
                .padding(.trailing)
                
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
            
            
            HStack {
                
                Text("Monochromatic").foregroundColor(Color.gray)
                
                Spacer()
                
            }
            .padding(.top)
            
            HStack (spacing: 0) {
                
                VStack {
                    
                }
                .frame(width: 60, height: 60)
                .background(baseColour)
                
                VStack {
                    
                }
                .frame(width: 60, height: 60)
                .background(darkerColour)
                
                VStack {
                    
                }
                .frame(width: 60, height: 60)
                .background(darkestColour)
                
                Spacer()
                
                Button(action: {
                    // Create a new palette instance
                    let newPalette = SavedPalette(hue: hue)
                    
                    // Add it to the list
                    savedPalettes.append(newPalette)
                    
                }, label: {
                    Text("Save")
                })
                
            }
            
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
