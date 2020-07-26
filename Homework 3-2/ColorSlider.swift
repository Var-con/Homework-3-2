//
//  ColorSlider.swift
//  Homework 3-2
//
//  Created by Станислав Климов on 24.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var sliderValue: Double
    var sliderColor: Color
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1)
            .accentColor(sliderColor)
    }
}


