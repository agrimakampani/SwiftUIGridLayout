//
//  ContentView.swift
//  SwiftUIGridLayout
//
//  Created by Simon Ng on 21/7/2020.
//

import SwiftUI
import UIKit

struct ContentView: View {
    let items = Array(1...15).map({ "image\($0)"})
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyHGrid(rows: layout, content: {
                    ForEach(items, id: \.self) { item in
                        Image(item)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .border(Color.secondary)
                            .cornerRadius(12)
                            .padding()
                        Spacer()
                        Button("GET") {

                        }
                        .foregroundColor(Color.blue)
                        .padding()
                    }
                })
            }
            .navigationTitle("App Store")
        }
    }
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
