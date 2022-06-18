//
//  File.swift
//  
//
//  Created by Belli's MacBook on 18/06/2022.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
struct ShareSheet: UIViewControllerRepresentable{
    var urls: [Any]
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: urls, applicationActivities: nil)
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
}
