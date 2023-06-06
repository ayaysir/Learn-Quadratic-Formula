//
//  ExpansionView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/07.
//

import SwiftUI

struct ExpansionView: View {
    @Binding var viewModel: QuadraticFormulaViewModel
    
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
        .navigationTitle("근의 공식 (Quadratic Formula)")
    }
}

struct ExpansionView_Previews: PreviewProvider {
    static var previews: some View {
        ExpansionView(viewModel: .constant(QuadraticFormulaViewModel()))
    }
}
