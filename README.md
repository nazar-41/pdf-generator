# PDF-Generator

Native Swift Package for iOS Applications.

**Setup time:** 1 minute

**Sample project:** https://github.com/nazar-41/PDF-Generator/tree/main/Example




https://github.com/user-attachments/assets/18ec4fd9-158d-4a50-bdf7-fbbd6c193c5f





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
    @State private var viewModel: VM_ContentView = .init()
    
    var body: some View {
        VStack {
            // Button to generate PDF
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
```

### Explanation

- `PDFGeneratingButton`: A SwiftUI button that triggers the conversion of the specified view (`ContentView()` in this case) into a PDF. Customize the button's label to fit your design preferences.
- `ContentView()`: Replace this with any SwiftUI view you want to convert to PDF.
- `Label("Convert", systemImage: "square.and.arrow.up")`: The label for the button, featuring a system image and headline font styling.

