//
//  ColorView.swift
//  Homework 3-2
//
//  Created by Станислав Климов on 24.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    @Binding var redColorValue: Double
    @Binding var greenColorValue: Double
    @Binding var blueColorValue: Double
    var body: some View {
        Color(
            .sRGB,
            red: (redColorValue / 255),
            green: (greenColorValue / 255),
            blue: (blueColorValue / 255),
            opacity: 1
        )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 3))
            .frame(height: 100)
    }
}

