# Hubble iOS SDK

Hubble iOS SDK enables you to track events, identify users, and show in-product surveys.

## Requirements

- iOS 15.1+

## Installation

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager/) to install `Hubble` by adding the proper description to your `Package.swift` file:

```swift
dependencies: [
  .package(url: "https://github.com/hubble-team/ios.git", from: "1.0.0")
],
```

Normally you'll want to depend on the `Hubble` target:

```swift
.product(name: "Hubble", package: "Hubble")
```

### Cocoapods

To integrate Hubble into your Xcode project using CocoaPods, specify it in your Podfile:

```ruby
pod 'Hubble', '~> 1.0'
```

## Usage

### Initialize

First, initialize the `HubbleConnect` instance using the team ID found on your team's dashboard.

```swift
import Hubble

extension HubbleConnect {
    static let shared = HubbleConnect(configuration: .init(teamID: "<your-team-id>"))
}
```

### Identify Users

The Hubble SDK enables the identification of users and the assignment of custom attributes. By identifying a user with a custom user ID, you can target surveys to specific user segments based on their attributes.

```swift
HubbleConnect.shared.identify(userID: "your_existing_user_id", properties: ["eyeColor": "gold"])
```

To stop identifying a user (e.g., during sign out), use the `reset` method:

```swift
HubbleConnect.shared.reset()
```

### Track Events

The Hubble SDK offers an event tracking system, allowing you to record specific actions within your application. These events can trigger custom surveys.

```swift
HubbleConnect.shared.trackEvent(name: "USER_PURCHASED")
```

### Show survey (For debugging purposes)

For debugging purposes, you can manually trigger an in-product survey using the survey ID found in the survey URL.

```swift
HubbleConnect.shared.showSurvey(withID: "<survey-id>")
```

Use the survey ID from the specific URL provided: https://app.hubble.team/surveys/<survey-id>.

## License

Hubble iOS SDK is available under the Apache 2.0 license. See the LICENSE file for more info.

## Contact

For support, feedback, or suggestions, please reach out to us at:
- Email: hello@hubble.team
- or join our [Slack Community Group](https://join.slack.com/t/hubble-twk1672/shared_invite/zt-1lur2lv0x-2U72fMERCai~hsVYyDp_2w)