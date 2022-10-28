//
//  ColorSwatchView.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-27.
//

import SwiftUI

struct ColorSwatchView: View {
    //MARK: Stored Properties
    var color: Color
    var size: Double
    
    // Interface
    var body: some View {
        VStack {
            
        }
        .frame(width: size, height: size)
        .background(color)
        .padding(.trailing)
    }
}

struct ColorSwatchView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatchView(color: Color.blue, size: 200)
    }
}
