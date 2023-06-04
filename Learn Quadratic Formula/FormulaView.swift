//
//  FormulaView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/04.
//

import SwiftUI
import RichTextView

struct FormulaView: UIViewRepresentable {
    
    enum TextFontType {
        case header, formula
    }
    
    var textFontType: TextFontType
    var string: String
    
    var font: UIFont {
        switch textFontType {
        case .header:
            return .systemFont(ofSize: 30, weight: .bold)
        case .formula:
            return .systemFont(ofSize: 23)
        }
    }
    
    func makeUIView(context: Context) -> RichTextView {
        let richTextView = RichTextView(
            input: string,
            latexParser: LatexParser(),
            font: font,
            textColor: UIColor.black,
            // 분수 짤리는거 여기서 조정함
            latexTextBaselineOffset: textFontType == .formula ? 19 : 0,
            frame: .zero,
            completion: nil
        )
        print(richTextView.constraints)
        
        return richTextView
    }

   func updateUIView(_ uiView: RichTextView, context: Context) {
        uiView.update(
            input: string,
            latexParser: LatexParser(),
            font: font,
            textColor: UIColor.black,
            completion: nil
        )
   }
}
