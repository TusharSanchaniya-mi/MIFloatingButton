# MIFloatingButton for SwiftUI

Floating Button is a UI element that use to a button that triggers the primary action for a particular screen.

[![CI Status](https://img.shields.io/badge/swift-5.0-brightgreen)](https://img.shields.io/badge/swift-5.0-brightgreen)
[![Platform iOS](https://img.shields.io/badge/platform-iOS-red)](https://img.shields.io/badge/platform-iOS-red)
<a href="https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nikunjprajapati95/Reading-Animation&amp;utm_campaign=Badge_Grade"><img src="https://app.codacy.com/project/badge/Grade/44b16d6ddb96446b875d38bf2ec89b11"/></a>
<a href="https://github.com/TusharSanchaniya-mi/MIFloatingButton/blob/main/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/licence-MIT-orange">

## Requirements 🛠️

- iOS 15.0+
- Swift 5.8+
- SwiftUI

## Installation ⚙️

## Swift Package Manager

The [Swift Package Manager](https://www.swift.org/documentation/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding MIFloatingButton as a dependency is as easy as adding it to the dependencies value of your Package.swift or the Package list in Xcode.

```
dependencies: [
    .package(url: "https://github.com/TusharSanchaniya-mi/MIFloatingButton", .upToNextMajor(from: "1.0.0"))
]
```

## CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate MIFloatingButton into your Xcode project using CocoaPods, specify it in your Podfile:

```ruby
pod 'MIFloatingButton'
```

## Key Features: ✨

MIFloatingButton provides list of action buttons to perform with an attractive UI design, there are 3 types of design to show FloatingButton over the screen.

- both : indicates button with UI and text title. (Default)
- iconOnly : indicates button with icons only.
- textOnly : indicates button with text only.

## Example

```swift

import SwiftUI

struct ContentView: View {

    @State var arrFloatingItem: [FloatingItem] = []

    func fillFloatingText() {
        let arrIconName = ["email_ic", "person", "person_ic", "xmark.bin"]
        for item in 0..<arrIconName.count {
            arrFloatingItem.append(FloatingItem(title: "Button \(item)", iconName: arrIconName[item]))
        }
    }

    let configItem = FloatingItemConfiguration(floatingIcon: "plus")

    var body: some View {

        VStack {
            MIFloatingButton(arrFloatingItem: $arrFloatingItem, config: configItem) { floatingItem in
                // Perform your action
            } childView: {
                VStack {
                    List {
                        ForEach(1 ... 30, id: \.self) { _ in
                            HStack(spacing: 15) {
                                Image(systemName: "person.fill")
                                    .padding(10)
                                    .background(.green.opacity(0.3))
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Fulan bin fulan")
                                    Text("Aenean sagittis leo ut massa sagittis varius ac eu mauris. Nunc interdum tellus vestibulum bibendum pulvinar.")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                }
            }
            .onAppear() {
                fillFloatingText()
            }
        }
    }
}

#Preview {
    ContentView()
}

```
## Screenshots 

|      both        |          iconOnly          |               textOnly             |
| ---------------- | -------------------------- | ---------------------------------- |
| ![Simulator Screenshot - iPhone 15 Pro - 2024-07-02 at 13 46 33](https://github.com/TusharSanchaniya-mi/MIFloatingButton/assets/82019401/e371dd98-8162-4cac-bc31-921b429f04cd) | ![Simulator Screenshot - iPhone 15 Pro - 2024-07-02 at 13 47 01](https://github.com/TusharSanchaniya-mi/MIFloatingButton/assets/82019401/d2f49549-3241-44af-9592-ced667ff255f) | ![Simulator Screenshot - iPhone 15 Pro - 2024-07-02 at 13 47 17](https://github.com/TusharSanchaniya-mi/MIFloatingButton/assets/82019401/bf6fe79e-a391-4a96-9757-bec540108c9a) |



## 🙋 Author

## [MindInventory](https://www.mindinventory.com/)

## 📱 Check out other lists of our Mobile UI libraries 🤩

<a href="https://github.com/Mindinventory?language=kotlin"> 
<img src="https://img.shields.io/badge/Kotlin-0095D5?&style=for-the-badge&logo=kotlin&logoColor=white"> </a>
<a href="https://github.com/Mindinventory?language=swift"> 
<img src="https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white"> </a>
<a href="https://github.com/Mindinventory?language=dart"> 
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"> </a>
<a href="https://github.com/Mindinventory/react-native-tabbar-interaction"> 
<img src="https://img.shields.io/badge/React_Native-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"> </a>

<br></br>

## 💻 Check out other lists of Web libraries 🤩

<a href="hhttps://github.com/Mindinventory?language=javascript"> 
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"></a>
<a href="https://github.com/Mindinventory?language=go"> 
<img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white"></a>
<a href="https://github.com/Mindinventory?language=python"> 
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"></a>

<br></br>

<h4><a href="https://www.mindinventory.com/whitepapers.php?utm_source=gthb&utm_medium=special&utm_campaign=folding-cell#demo"><u> 📝 Get FREE Industry WhitePapers →</u></a></h4>

## Check out our Work 📜

<a href="https://dribbble.com/mindinventory"> 
<img src="https://img.shields.io/badge/Dribbble-EA4C89?style=for-the-badge&logo=dribbble&logoColor=white" /> </a>
<br></br>

## 📄 License

MIFloatingButton is [MIT-licensed](/LICENSE).

If you use our open-source libraries in your project, please make sure to credit us and Give a star to www.mindinventory.com

<a href="https://www.mindinventory.com/contact-us.php?utm_source=gthb&utm_medium=repo&utm_campaign=swift-ui-libraries">
<img src="https://github.com/Sammindinventory/MindInventory/blob/main/hirebutton.png?raw=true" width="203" height="43"  alt="app development">
</a>
