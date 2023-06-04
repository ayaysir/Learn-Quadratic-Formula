//
//  ContentView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/04.
//

import SwiftUI

struct ContentView: View {
    @State var string = "In physics, the mass-energy equivalence is stated by the equation [math]$E=mc^2$[/math], discovered in 1905 by Albert Einstein."
    var viewModel = QuadraticFormulaViewModel()
    
    var body: some View {
        TabView {
            ForEach(0..<10) { index in
                VStack(alignment: .leading) {
                    Text("\(index + 1)")
                        .font(.largeTitle)
                        .padding()
                    EachPageView(headerText: viewModel.descriptions[index], formula: "[math]\(viewModel.formulas[index])[/math]")
                }
            }
        }
        
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
