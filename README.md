# SFSymbol

**SFSymbol** makes ease of accessing SFSymbols.

<p align="center">
    <a href="#requirements">Requirements</a> • <a href="#usage">Usage</a> • <a href="#installation">Installation</a> • <a href="#author">Author</a> • <a href="#license-mit">License</a>
</p>

## Requirements

- iOS 14.0+
- Xcode 10.2+
- Swift 5.0+

## Usage

```swift

VStack(spacing: 10) {
    Group {
        SFSymbol().circle
        SFSymbol().circle.fill
        SFSymbol().checkmark
        SFSymbol().person.fill.checkmark
        SFSymbol().rectangle.fill.badge.checkmark
        SFSymbol().text.badge.checkmark
        SFSymbol().video.badge.checkmark
        SFSymbol().square.and.pencil
    }
    
    Group {
        SFSymbol(1).magnifyingglass
        SFSymbol("00").square
        SFSymbol().cylinder.split + "1x2" // cylinder.split.1x2
        (SFSymbol().cylinder.split + "1x2").fill // cylinder.split.1x2.fill
        SFSymbol().cylinder.split + SFSymbol("1x2").fill // cylinder.split.1x2.fill
    }
}

```

## Installation

#### Swift Package Manager
You can use [The Swift Package Manager](https://swift.org/package-manager) to install `SFSymbol` by adding the proper description to your `Package.swift` file:
```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/shawnynicole/SFSymbol.git", from: "1.0.0")
    ]
)
```
For more information on [Swift Package Manager](https://swift.org/package-manager), checkout its [GitHub Page](https://github.com/apple/swift-package-manager).

#### Manually

[Download](https://github.com/shawnynicole/SFSymbol/archive/master.zip) the project and copy the `SFSymbol` folder into your project to use it in.

## Author

shawnynicole

## License (MIT)

**SFSymbol** is available under the MIT license. See the LICENSE file for more info.
