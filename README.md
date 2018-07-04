
![CELLULAR](https://www.cellular.de/cellular-logo.png)

[![Build Status](https://travis-ci.org/cellular/cellular-ios.svg?branch=master)](https://travis-ci.org/cellular/cellular-ios)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Version](https://img.shields.io/badge/swift%20version-4.1-orange.svg)](https://img.shields.io/badge/swift%20version-4.1-orange.svg)
[![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20watchOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20linux-lightgrey.svg)](https://img.shields.io/badge/platform-iOS%20%7C%20watchOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20linux-lightgrey.svg)
[![Twitter](https://img.shields.io/badge/twitter-@CELLULAR-blue.svg?style=flat)](https://twitter.com/cellular)

A collection of Swift utilities that we share across swift-based projects at CELLULAR. It is a standalone module, no external dependencies.

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)

# Features

## Codable

There are several extensions on `KeyedDecodingContainer`. Most of which are heavily inspired by [Unbox](https://github.com/JohnSundell/Unbox).

###### THE PLANET

Throughout the `Codable` examples, the following struct will be used: 

```swift
import CELLULAR

public struct Planet: Codable {

    public var discoverer: String

    public var hasRingSystem: Bool

    public var numberOfMoons: Int

    public var distanceFromSun: Float // 10^6 km

    public var surfacePressure: Double? // bars
    
    public var atmosphericComposition: [String]    
```

#### 1. Allows `Foundation` types to be inferred on value assignment

```swift
    public init(from decoder: Decoder) throws {
	let container = try decoder.container(keyedBy: CodingKeys.self)
	
	discoverer = try container.decode(forKey: .discoverer) // String
	hasRingSystem = try container.decode(forKey: .hasRingSystem) // Bool
	numberOfMoons = try container.decode(forKey: .numberOfMoons) // Int
	distanceFromSun = try container.decode(forKey: .distanceFromSun) // Float
```

#### 2. Even `Optional` holding these types may be inferred

```swift
	surfacePressure = try container.decode(forKey: .surfacePressure) // Double?
```

#### 3. Allows instances in collections to fail decoding

```swift
	atmosphericComposition = try container.decode(forKey: .atmosphericComposition, allowInvalidElements: true) ?? []
}
```

## Locking
TODO

## Result
TODO

## Storyboard
TODO
## Requirements

- iOS 9.3+ | watchOS 2.2+ | tvOS 9.2+ | macOS 10.10+ | Ubuntu 14.04+
- Swift 4.0+

## Installation

### [Swift Package Manager](https://swift.org/package-manager/) 

Once you have your Swift package set up, adding CELLULAR as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/cellular/cellular-ios.git", from: "1.0.0")
]
```

## License

CELLULAR is released under the MIT license. [See LICENSE](https://github.com/cellular/cellular-ios/blob/master/LICENSE) for details.
