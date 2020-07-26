//
//  ContentView.swift
//  Homework 3-2
//
//  Created by Станислав Климов on 24.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue: Double = 150.0
    @State private var greenSliderValue: Double = 150.0
    @State private var blueSliderValue: Double = 150.0
    
    var body: some View {
        ZStack {
            Color(.blue)
                .brightness(0.8)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorView(
                    redColorValue: $redSliderValue,
                    greenColorValue: $greenSliderValue,
                    blueColorValue: $blueSliderValue
                )
                HStackOfSlider(
                    sliderColor: .red,
                    sliderValue: $redSliderValue
                )
                HStackOfSlider(
                    sliderColor: .green,
                    sliderValue: $greenSliderValue
                )
                HStackOfSlider(
                    sliderColor: .blue,
                    sliderValue: $blueSliderValue
                )
                Spacer()
                
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

