# PDF-Generator

Native Swift Package for iOS Applications.

**Setup time:** 1 minute

**Sample project:** https://github.com/nazar-41/PDF-Generator/tree/main/Example

<div>
    <img src="Screenshots/s1.gif" width=300>
</div>

## Setup☕  (Swift Package Manager)

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding Starscream as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .Package(url: "https://github.com/nazar-41/pdf-generator", branch: .main)
]
```

### Import the framework

First thing is to import the framework. See the Installation instructions on how to add the framework to your project.

```swift
import PDF_Generator
```

## How to use

```swift
import SwiftUI
import PDF_Generator

struct ContentView: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        
        VStack{
        
            //MARK: Button that opens Share Sheet on click
            GeneratingButtonView(showSheet: $showSheet, buttonLabel: convertButton, convertingView: convertingView)
            
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
    
    
    //MARK: Button View that converts given View to the PDF file
    private var convertButton: AnyView{
        let buttonView = Image(systemName: "square.and.arrow.up").font(.system(size: 50))
        
        return AnyView(buttonView)
    }
    
    
    //MARK: View that you wanna convert to PDF
    private var convertingView: AnyView{
        let view = ContentView()
        
        return AnyView(view)
    }
}
```
