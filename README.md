# SimpliFi SDK Documentation

## Overview
The SimpliFi SDK provides a set of powerful functionalities for seamless integration into your mobile applications. With SimpliFi, developers can easily implement features related to card management and electronic Know Your Customer (eKYC) verification. This documentation will guide you through the installation process and provide detailed information about the available APIs.
We have two seprate SDKs to handle Card related operations i.e `SimpliFiCard` and eKYC operations i.e `SimpliFiEkyc`. You can any or both SDKs as per your needs.

## Table of Contents
- [Installation](#installation)
  - [SimpliFiCard Installation](#simplificard-sdk)
  - [SimpliFiEkyc and SimpliFiCard Installation](#simplifiekyc-and-simplificard-sdks)
- [SDK Initialization](#sdk-initialization)
- [SimpliFiCard SDK](#simplificard-sdk)
  - [API Reference](#api-reference)
  - [SFRequest Structure](#sfrequest-structure)
- [SimpliFiEkyc SDK](#simplifiekyc-sdk)
  - [API Reference](#api-reference-1)
  - [EkycDelegate Protocol](#ekycdelegate-protocol)
- [Logging](#logging)
  - [Custom Logger](#custom-logger)
- [Customizing UI](#customizing-ui)
- [Security Considerations](#security-considerations)
- [Release Notes and Versioning](#release-notes-and-versioning)
- [Support and Contact Information](#support-and-contact-information)

## Installation

### SimpliFiCard SDK
To install the SimpliFiCard SDK, follow these steps:

1. Add the SimpliFi source repository at the top of your `Podfile`:
   ```ruby
   source 'https://cdn.cocoapods.org/'
   source 'https://github.com/simplifipay/ios-sdks.git'
   ```

2. Add SimpliFiCard as dependency in your project's `Podfile`:
   ```ruby
   use_frameworks!
   
   pod 'SimpliFiCard'

   required_dynamic_frameworks = ['Mixpanel-swift', 'AEOTPTextField']
   post_install do |installer|
     installer.pods_project.targets.each do |target|
       target.build_configurations.each do |config|
         if required_dynamic_frameworks.include?(target.name)
           config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
         end
       end
     end
   end
   ```
   
3. Run `pod install` in your project directory to install the SDK and its dependencies.

4. Import the SimpliFiCard module in your Swift files:
   ```swift
   import SimpliFiCard
   ```

---

### SimpliFiEkyc and SimpliFiCard SDKs
To install the SimpliFi SDKs, follow these steps:

1. Add the SimpliFi source repository at the top of your `Podfile`:
   ```ruby
   source 'https://cdn.cocoapods.org/'
   source 'https://github.com/idwise/ios-sdk'
   source 'https://github.com/simplifipay/ios-sdks.git'
   ```

2. Add SimpliFiCard and SimpliFiEkyc as dependencies in your project's `Podfile`:
   ```ruby
   pod 'SimpliFiEkyc'
   ```

3. Run `pod install` in your project directory to install the SDKs and their dependencies.

4. Import the SimpliFiCard and SimpliFiEkyc modules in your Swift files:
   ```swift
   import SimpliFiEkyc
   ```

**Note:**
The SimpliFi SDK requires a minimum iOS version of 13.0 or later. Please ensure that your project's deployment target is set accordingly.

## SDK Initialization
Before using the SimpliFi SDKs, you need to initialize the SDK with the base URL. To initialize the SDK, use the following method:

### `SFCore.initialize(baseUrl: String)`

Initializes the SimpliFi SDK with the provided base URL.

- `baseUrl`: A string representing the base URL of the SimpliFi server.

This method initializes the networking stack, logger, and sets the default theme. It should be called once during the application's initialization process.

Here's an example of how to initialize the SimpliFi SDK:

```swift
SFCore.initialize(baseUrl: "PROVIDED_URL")
```

Make sure to replace the `baseUrl` parameter with the actual base URL of your SimpliFi server.

## SimpliFiCard SDK
The SimpliFiCard SDK provides a powerful set of card-related functionalities for seamless integration into your mobile applications. With SimpliFiCard, developers can easily implement features such as displaying card details, requesting physical cards, activating cards, retrieving PINs, and setting PINs. This SDK ensures a smooth and secure experience for users when managing card information.

### API Reference

#### `SFCard.showDetail(for request: SFRequest, on controller: UIViewController)`

Displays the card details based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for fetching card details.
- `controller`: The view controller from which the card details should be presented.

#### `SFCard.requestPhysicalCard(for request: SFRequest, on controller: UIViewController)`

Requests the conversion of a virtual card to a physical card.

- `request`: An `SFRequest` object that includes the necessary parameters for the request.
- `controller`: The view controller from which the request should be initiated.

#### `SFCard.activate(for request: SFRequest, on controller: UIViewController)`

Activates a card based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for card activation.
- `controller`: The view controller from which the request should be initiated.

#### `SFCard.getPin(for request: SFRequest, on controller: UIViewController)`

Shows the PIN of a card using the corresponding `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for fetching the PIN.
- `controller`: The view controller from which the request should be initiated.

#### `SFCard.setPin(for request: SFRequest, on controller: UIViewController)`

Sets the PIN of a card.

- `request`: An `SFRequest` object that includes the necessary parameters for setting the PIN.
- `controller`: The view controller from which the request should be initiated.

#### SFRequest Structure

The `SFRequest` structure defines the parameters required for making requests to SimpliFiCard methods. It includes the following properties:

- `userUuid`: The UUID of the user associated with the card.
- `cardUuid`: The UUID of the card.
- `companyUuid`: The UUID of the company.
- `token`: The authentication token with `SDK_ADMIN` role for the request.

## SimpliFiEkyc SDK
The SimpliFiEkyc SDK enables electronic Know Your Customer (eKYC) verification within your mobile applications. With SimpliFiEkyc, developers can easily initiate eKYC journeys, track their progress, and handle the verification results. This SDK streamlines the user verification process and enhances the security of your application.

### API Reference

#### `SFEkyc.start(for request: SFRequest, on controller: UIViewController, delegate: EkycDelegate?)`

Starts the electronic Know Your Customer (eKYC) verification process based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for the eKYC verification.
- `controller`: The view controller from which the eKYC verification process should be initiated.
- `delegate`: An optional `EkycDelegate` object that acts as the delegate for the eKYC verification process.

##### `EkycDelegate` Protocol

The `EkycDelegate` protocol defines the methods that can be implemented by a delegate to receive eKYC verification process-related events. It includes the following methods:

- `journeyStarted(journeyID: String)`: Called when the eKYC verification journey is started. The `journeyID` parameter represents the unique identifier for the journey.
- `onJourneyResumed(journeyID: String)`: Called when the eKYC verification journey is resumed. The `journeyID` parameter represents the unique identifier for the journey.
- `journeyCancelled()`: Called when the eKYC verification journey is cancelled.
- `journeyFinished()`: Called when the eKYC verification journey is successfully completed.
- `onError(error: NSError)`: Called when an error occurs during the eKYC verification process. The `error` parameter represents the error that occurred.

Make sure to implement the `EkycDelegate` methods to handle the eKYC verification process events and provide appropriate actions or feedback to the users.

## Logging

The SimpliFiCard SDK includes SimpliFiLogger SDK, which logs any network errors to Mixpanel. By default, logging is enabled. You can enable or disable logging using the following methods:

```swift
import SimpliFiLogger
```

To enable logging, use:
```swift
SFLogger.enableLogging()
```

To disable logging, use:
```swift
SFLogger.disableLogging()
```

By enabling logging, network errors will be logged to Mixpanel for analysis and troubleshooting purposes.

### Custom Logger

You can set you own logger instead. To set custom logger implement `SFLoggable` protocol. And use it as:

```swift
import SimpliFiLogger

class MyLogger: SFLoggable {
  // implement methods
}

SFLogger.setCustomLogger(MyLogger())
```

Now all the logs will be redirected to your custom logger instead of default logger.

## Customizing UI

The SimpliFiCard SDK allows you to customize the look and feel of the views displayed by the SDK. To change UI elements, you can use the `SFTheme` class.

The `SFTheme` class provides methods to customize the UI elements used by the SimpliFi SDKs. You can customize the following elements. Supported Fonts are defined `SFFont` enum and supported colors are define in `SFColor` enum.

- `headerFont`: Specifies the font for the header text. **DEFAULT = SFFont.montserrat**
- `bodyFont`: Specifies the font for the body text. **DEFAULT = SFFont.montserrat**
- `backgroundColor`: Specifies the background color of views. **DEFAULT = SFColor.white**
- `buttonBackgroundColor`: Specifies the background color of Buttons. **DEFAULT = SFColor.blue**
- `buttonTextColor`: Specifies the text color on the Buttons. **DEFAULT = SFColor.white**
- `bodyTextColor`: Specifies the text color of body. **DEFAULT = SFColor.black**
- `cardTextColor`: Specifies the text color on the card. **DEFAULT = SFColor.white**
- `headerTextColor`: Specifies the text color of header. **DEFAULT = SFColor.black**

Here's an example of how to use the `SFTheme` class:

```swift
import SimpliFiUI

SFTheme.headerFont      = SFFont.bukra
SFTheme.backgroundColor = SFColor.black
.
.
.
```

#### SFFont Enum

```swift
enum SFFont: String {
    case montserrat
    case bukra
    case sanFrancisco
}
```

#### SFColor Enum

```swift
enum SFColor: String {
    case gray = "#E0E0E0"
    case white = "#FFFFFF"
    case blue = "#2E7FFD"
    case error = "#FA4949"
    case black = "#424242"
}
```

By customizing the theme options, you can align the appearance of the SDK with your application's design and branding.

## Security Considerations
SimpliFi SDKs prioritize security when handling sensitive data, such as card information and user

 verification details. The SDKs implement encryption mechanisms and follow industry best practices to ensure the confidentiality and integrity of the data. However, it is essential to implement additional security measures in your application to protect user data and comply with relevant regulations.

## Release Notes and Versioning
- SimpliFiCard SDK, version 4.0.1
  - Minor fixes.

- SimpliFiCard SDK, version 4.0.0
  - Show card details.
  - Request physical card.
  - Activate card.
  - Retrieve PIN.
  - Set PIN.

- SimpliFiEKyc SDK, version 4.0.3
  - Minor fixes.
 
- SimpliFiEKyc SDK, version 4.0.0
  - eKYC verification journey.

- SimpliFiLogger SDK, version 3.1.3
  - Console logger is added as a default logger
 
- SimpliFiLogger SDK, version 3.0.0
  - Logs network error to Mixpanel
  - Set custom logger
 
- SimpliFiUI SDK, version 3.0.3
  - Minor fixes

- SimpliFiUI SDK, version 3.0.0
  - Set custom UI theme

## Support and Contact Information
If you need any assistance or have questions regarding SimpliFi SDKs, you can reach out to our support team at daud.mujib@simplifipay.com.
