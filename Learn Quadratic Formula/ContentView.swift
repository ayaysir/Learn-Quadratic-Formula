//
//  ContentView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/04.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = QuadraticFormulaViewModel()
    @State var showExpansionView = false
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    FormulaView(textFontType: .header, string: viewModel.firstQuadraticDescription)
                        .frame(height: 100)
                    FormulaView(textFontType: .header, string: "[math]\(viewModel.firstQuadraticEquation)[/math]")
                        .frame(height: 200)
                    NavigationLink {
                        ExpansionView(viewModel: $viewModel)
                    } label: {
                        Text("전개하기")
                            .fontWeight(.bold)
                    }

                }
                .padding()
            }
        } else {
            // Fallback on earlier versions
            Text("need above iOS 16")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
