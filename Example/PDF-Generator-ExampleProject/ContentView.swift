//
//  ContentView.swift
//  PDF-Generator-ExampleProject
//
//  Created by Belli's MacBook on 18/06/2022.
//

import SwiftUI
import PDF_Generator

struct ContentView: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        
        VStack{
            GeneratingButtonView(showSheet: $showSheet,
                                 buttonLabel: convertButton,
                                 convertingView: convertingView)
            
            ScrollView(showsIndicators: true) {
    
                VStack{
                    ForEach(1..<20){item in
                        Text("\(item)")
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .padding(.vertical)
                            .background(.gray.opacity(0.3))
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 50)
            }
        }
    }
    
    private var convertButton: some View{
        
        let buttonView: some View{
            
            Label("Convert", systemImage: "square.and.arrow.up")
                .font(.system(size: 40))
        }
        
        return Label("Convert", system)
        
        return AnyView(buttonView)
    }
    
    private var convertingView: AnyView{
        let view: some View{
            ContentView()
        }
        
        return AnyView(view)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
