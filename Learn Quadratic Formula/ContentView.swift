//
//  ContentView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/04.
//

import SwiftUI

struct QuadraticFormulaViewModel {
    let descriptions = [
        "양변을 [math]$x^2$[/math]의 개수 [math]a[/math]로 나눈다",
        "상수항을 우변으로 이항",
        "양변에 (일차항의 계수 / 2)[math]^2[/math]를 더한다",
        "좌변을 완전제곱식으로 인수분해",
        "우변 통분",
        "우변 계산",
        "제곱근을 구한다",
        "우변의 분모를 근호 밖으로",
        "좌변의 상수항을 이항",
        "우변을 통분, 정리",
    ]
    
    let formulas = [
        "$x^2 + \\frac{b}{a}x + \\frac{a}{c} = 0$",
        "$x^2 + \\frac{b}{a}x = -\\frac{c}{a}$",
        "$x^2 + \\frac{b}{a}x + (\\frac{b}{2a})^2 = -\\frac{a}{c} + (\\frac{b}{2a})^2$",
        "$(x+\\frac{b}{2a})^2 = -\\frac{c}{a} + \\frac{b^2}{4a^2} $",
        "$(x+\\frac{b}{2a})^2 = -\\frac{4ac}{4a^2} + \\frac{b^2}{4a^2} $",
        "$(x+\\frac{b}{2a})^2 = \\frac{b^2-4ac}{4a^2}$",
        "$x+\\frac{b}{2a} = \\pm\\sqrt{\\frac{b^2-4ac}{4a^2}}$",
        "$x+\\frac{b}{2a} = \\pm\\frac{\\sqrt{b^2-4ac}}{2a}$",
        "$x = -\\frac{b}{2a} \\pm\\frac{\\sqrt{b^2-4ac}}{2a}$",
        "$x = \\frac{-b\\pm\\sqrt{b^2-4ac}}{2a}$",
    ]
}

struct ContentView: View {
    @State var string = "In physics, the mass-energy equivalence is stated by the equation [math]$E=mc^2$[/math], discovered in 1905 by Albert Einstein."
    var viewModel = QuadraticFormulaViewModel()
    
    var body: some View {
        TabView {
            ForEach(0..<10) { index in
                VStack {
                    Text("\(index + 1)")
                        .font(.largeTitle)
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
