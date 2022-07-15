PrettyLayout is a extra lightweight DSL to make Auto Layout easy on iOS.
Using PrettyLayout, you can set up your Auto Layout constraints in simple way 

In short, it allows you to replace this:

```swift
final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let yellow = UIView()
        yellow.backgroundColor = .yellow
        yellow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yellow)
        NSLayoutConstraint.activate([
            yellow.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            yellow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            yellow.topAnchor.constraint(equalTo: view.topAnchor),
            yellow.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

        let redBox = UIView()
        redBox.backgroundColor = .red
        redBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redBox)
        NSLayoutConstraint.activate([
            redBox.widthAnchor.constraint(equalToConstant: 100),
            redBox.heightAnchor.constraint(equalToConstant: 100),
            redBox.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redBox.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
```
with this

```swift
final class ViewController: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()
        
        let yellow = UIView()
        yellow.backgroundColor = .yellow
        view.addSubview(yellow, constraints: Constraints.pin)
        
        let redBox = UIView()
        redBox.backgroundColor = .red
        view.addSubview(redBox,
                        constraints: Constraints.center,
                        singleConstraints: Constraints.fixedSize(size: CGSize(width: 100, height: 100)))
    }
}
```

## Contents

- [Requirements](#requirements)
- [Communication](#communication)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Requirements

- iOS 12.0+
- Xcode 10.0+
- Swift 5.0+

## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.


## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build PrettyLayout.

To integrate SnapKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'PrettyLayout'
end
```

Then, run the following command:

```bash
$ pod install
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate PrettyLayout into your project manually.

---

## Usage

### Describe constraints when you adding view to hierarhy

```swift
view.addSubview(label, constraints: [
 equal(\.topAnchor)
 equal(\.leadingAnchor),
 equal(\.trailingAnchor)           
])
```
You can also describe relationship to other child, constants, and priority.

```swift
view.addSubview(button, constraints: [
 equal(\.topAnchor, to: label, \.bottomAnchor, constant: 16, priority: .defaultHigh)
 equal(\.leadingAnchor),
 equal(\.trailingAnchor)           
])
```
In this example button was added to view under the label with offset.

### Functions

- `equal`
- `lessOrEqual`
- `greaterOrEqual`

### Preset functions

You can use preset function for reduce the code:

- `Constraints.pin`
- `Constraints.center`
- `Constraints.with(insets:)`
- `Constraints.fixedSize`
- `RespectBottomSafeAreaConstraints.pin`
- `RespectBottomSafeAreaConstraints.with(insets:)`
- `RespectSafeAreaConstraints.pin`
- `RespectSafeAreaConstraints.with(insets:)`

## License

PrettyLayout is released under the MIT license. See LICENSE for details.
