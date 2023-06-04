//
//  EachPageView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/04.
//

import SwiftUI

struct EachPageView: View {
    @State var headerText = "양변을 [math]$x^2$[/math]의 개수로 나눈다"
    @State var formula = "[math]$x^2 + \\frac{a}{b}x + \\frac{a}{c}x = 0$[/math]"
    
    var body: some View {
        VStack {
            FormulaView(textFontType: .header, string: headerText)
                .frame(height: 200)
            Spacer()
            FormulaView(textFontType: .formula, string: formula)
                .frame(height: 200)
        }
        .padding()
    }
}

struct EachPageView_Previews: PreviewProvider {
    static var previews: some View {
        EachPageView()
    }
}
