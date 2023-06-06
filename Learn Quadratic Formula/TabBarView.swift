//
//  TabBarView.swift
//  Learn Quadratic Formula
//
//  Created by 윤범태 on 2023/06/04.
//

import SwiftUI

struct MyCustomView: View {
    @State var text = "empty"
    
    var body: some View {
        VStack {
            Text(text)
                .font(.system(size: 200))
        }
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            MyCustomView(text: "A")
            //     .tabItem {
            //     Image(systemName: "snowflake")
            //     Text("First")
            // }
            MyCustomView(text: "B")
            //     .tabItem {
            //     Image(systemName: "fanblades")
            //     Text("Second")
            // }
            MyCustomView(text: "C")
            //     .tabItem {
            //     Image(systemName: "key")
            //     Text("Third")
            // }
            MyCustomView(text: "D")
            //     .tabItem {
            //     Image(systemName: "car")
            //     Text("Fourth")
            // }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
