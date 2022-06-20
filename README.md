# PDF-Generator

## Setup ☕ (Swift Package Manager)

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding Starscream as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .Package(url: "https://github.com/NazarWelkakayew/PDF-Generator.git", branch: .main)
]
```

### Import the framework

First thing is to import the framework. See the Installation instructions on how to add the framework to your project.

```swift
import PDF_Generator
```
