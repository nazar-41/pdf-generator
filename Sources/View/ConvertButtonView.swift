//
//  SwiftUIView.swift
//  
//
//  Created by Belli's MacBook on 18/06/2022.
//

import SwiftUI
import Foundation
import UIKit

@available(iOS 13.0, *)
public struct GeneratingButtonViewb: View {
    public var showSheet: Binding<Bool>

    
    
    public var buttonLabel: AnyView
    public var convertingView: AnyView
    
//    var buttonLabel: () -> Content
//    var convertingView: () -> Content
    
    @StateObject var viewModel = ShareSheetViewModel()
    
    public init(showSheet: Binding<Bool>, buttonLabel: AnyView, convertingView: AnyView) {
        self.buttonLabel = buttonLabel
        self.convertingView = convertingView
        self.showSheet = showSheet

        //self.content = content()
    }
//    public init(showSheet: Binding<Bool>, buttonLabel:  () -> Content, convertingView: () -> Content) {
//        self.showSheet = showSheet
//
//        self.buttonLabel = buttonLabel()
//        self.convertingView = convertingView()
//    }
    
    public var body: some View {
        VStack {
            Button {
                exportToPDF {
                    convertingView
                } complition: { status, url in
                    if let url = url,status{
                        viewModel.pdfURL = url
                        showSheet.wrappedValue = true
                    }else{
                        print("failed to produce pdf file")
                    }
                }
            } label: {
                buttonLabel
            }
        }
        .sheet(isPresented: showSheet) {
            viewModel.pdfURL = nil
        } content: {
            if let pdfURL = viewModel.pdfURL {
                ShareSheet(urls: [pdfURL])
                //                ShareSheet()
            }
        }
    }
}

@available(iOS 13.0, *)
class ShareSheetViewModel: ObservableObject{
    @Published var pdfURL: URL?
}
