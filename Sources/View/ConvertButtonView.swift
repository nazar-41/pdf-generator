//
//  SwiftUIView.swift
//  
//
//  Created by Belli's MacBook on 18/06/2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct GeneratingButtonView: View {
    public var buttonLabel: AnyView
    public var convertingView: AnyView
    
    @StateObject var viewModel = ShareSheetViewModel()
    
    public init(buttonLabel: AnyView, convertingView: AnyView) {
        self.buttonLabel = buttonLabel
        self.convertingView = convertingView
    }
    public var body: some View {
        VStack {
            Button {
                exportToPDF {
                    convertingView
                } complition: { status, url in
                    if let url = url,status{
                        viewModel.pdfURL = url
                        viewModel.showSheet.toggle()
                    }else{
                        print("failed to produce pdf file")
                    }
                }
            } label: {
                buttonLabel
            }
        }
    }
}

@available(iOS 13.0, *)
class ShareSheetViewModel: ObservableObject{
    @Published var pdfURL: URL?
    @Published var showSheet: Bool = false
}
