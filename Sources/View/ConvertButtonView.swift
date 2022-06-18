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
    public var showSheet: Binding<Bool>
    
    @StateObject var viewModel = ShareSheetViewModel()
    
    public init(showSheet: Binding<Bool>, buttonLabel: AnyView, convertingView: AnyView) {
        self.buttonLabel = buttonLabel
        self.convertingView = convertingView
        self.showSheet = showSheet
    }
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
    }
}

@available(iOS 13.0, *)
class ShareSheetViewModel: ObservableObject{
    @Published var pdfURL: URL?
}
