//
//  ContentView.swift
//  PDF-Generator-ExampleProject
//
//  Created by Belli's MacBook on 18/06/2022.
//

import SwiftUI
import PDF_Generator

struct ContentView: View {
    @State private var viewModel: VM_ContentView = .init()
    
    var body: some View {
        VStack {
            PDFGeneratingButton {
                ContentView() // view that should be converted
            } label: {
                Label("Convert", systemImage: "square.and.arrow.up")
                    .font(.headline)
            }
            
            ScrollView(showsIndicators: true) {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(viewModel.gridItems, id: \.self) { item in
                        Text("\(item)")
                            .frame(width: 100, height: 100)
                            .background(viewModel.randomColor())
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
