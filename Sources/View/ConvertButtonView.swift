//
//  SwiftUIView.swift
//
//
//  Created by Belli's MacBook on 18/06/2022.
//

import SwiftUI
import Foundation

@available(iOS 14.0, *)
public struct PDFGeneratingButton<Content: View, Label: View>: View {
    @StateObject var viewModel = ShareSheetViewModel()
    @State private var showSheet: Bool = false
    
    public var content: Content
    public var label: Label

    public var body: some View {
        VStack {
            Button {
                exportToPDF {
                    content
                } complition: { status, url in
                    if let url = url, status {
                        viewModel.pdfURL = url
                        showSheet = true
                    } else {
                        print("❌Error: failed to produce pdf file")
                    }
                }
            } label: {
                label
            }
        }
        .sheet(isPresented: $showSheet) {
            viewModel.pdfURL = nil
        } content: {
            if let pdfURL = viewModel.pdfURL {
                ShareSheet(urls: [pdfURL])
            }
        }
    }
}

@available(iOS 13.0, *)
class ShareSheetViewModel: ObservableObject {
    @Published var pdfURL: URL?
}
