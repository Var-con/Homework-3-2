//
//  HStackOfSlider.swift
//  Homework 3-2
//
//  Created by Станислав Климов on 24.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

struct HStackOfSlider: View {
    var sliderColor: Color
    let formatter = NumberFormatter()
    @Binding var sliderValue: Double
    
    
    var body: some View {
        
        HStack {
            Text("\(lround(sliderValue))")
                .foregroundColor(.white)
                .frame(width: 60)
                .padding()
            Text("0").foregroundColor(sliderColor)
            ColorSlider(sliderValue: $sliderValue, sliderColor: sliderColor)
            Text("255").foregroundColor(sliderColor)
            TextField("0", value: $sliderValue, formatter: formatter)
                .keyboardType(.numbersAndPunctuation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60)
        }
    }
}

