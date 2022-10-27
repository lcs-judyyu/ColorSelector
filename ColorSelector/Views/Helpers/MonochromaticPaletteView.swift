//
//  MonochromaticPaletteView.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-27.
//

import SwiftUI

struct MonochromaticPaletteView: View {
    
    //The selected hue (passed from the palette)
    //We need this information passed to
    var selectedHue: Double
    
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
    
    
    var body: some View {
        
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
            
        }
        
    }
}

struct MonochromaticPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        MonochromaticPaletteView(selectedHue: 0.0)
    }
}
