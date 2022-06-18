//
//  File.swift
//  
//
//  Created by Belli's MacBook on 18/06/2022.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct ShareSheet: UIViewControllerRepresentable{
    public var urls: [Any]
    
    public init(urls: [Any]){
        self.urls = urls
    }
    
    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: urls, applicationActivities: nil)
        
        return controller
    }
    
    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
}
