# [Nimble] matchers for [Fox] #

[Nimble]: https://github.com/Quick/Nimble
[Fox]: https://github.com/jeffh/Fox

## Installation ##

### [Carthage] ###

[Carthage]: https://github.com/Carthage/Carthage

Add the following to your Cartfile:

```
github "thoughtbot/NimbleFox"
```

Then run `carthage update`.

Follow the current instructions in [Carthage's README][carthage-installation]
for up to date installation instructions.

[carthage-installation]: https://github.com/Carthage/Carthage#adding-frameworks-to-an-application

### [CocoaPods] ###

[CocoaPods]: http://cocoapods.org

__DISCLAIMER: CocoaPods doesn't officially support Swift projects yet. Use the
pre-release version at your own discretion.__

Add the following to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html):

```ruby
pod 'NimbleFox', :git => 'https://github.com/thoughtbot/NimbleFox'
```

Then run `pod install` with CocoaPods 0.36 or newer.

### Git Submodules ###

I guess you could do it this way if that's your thing.

Add this repo as a submodule, and add the project file to your workspace. You
can then link against `NimbleFox.framework` for your application target.

## Usage ##

NimbleFox adds a single matcher to Nimble: `hold()`. Using this matcher, you
can write your Fox assertions like so:

```swift
let property = forAll(tuple([integer(), integer()])) { tuple in
  let a = tuple[0] as Int
  let b = tuple[1] as Int

  return a + b == b + a
}

expect(property).to(hold())
```
