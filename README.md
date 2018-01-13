
# react-native-modal-no-unmount (iOS only!)

## Why the module needed?

With simple view displayed, using default react-native Modal component is perfect.
The problem is, the view will be unmounted after the Modal invisible without any chances to keep it alive!

All states of the destroyed view should be saved somewhere (like Redux store) for restoing when open it again such as scroll position, stack-navigation state... The more states we want to restore, the more complicated and cases we have to handle and test!

## Solution

The module refer ALL code of Modal component in react-native@0.51.0
The modification points are as below:

1. In js code
- Keep Modal alive if visible = false
- Add `visible` prop to native module

2. In native code
- Clone `RCTModalHostViewManager` and `RCTModalHostView` classes to make `RNModalNoUnmountManager` and `RNModalHostView`
- Add `visible` prop to `RNModalHostView` class
- Present/Dismiss modal view by the setter of the `visible` prop.

## Getting started

`$ npm install react-native-modal-no-unmount --save`

### Mostly automatic installation

`$ react-native link react-native-modal-no-unmount`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-modal-no-unmount` and add `RNModalNoUnmount.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNModalNoUnmount.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNModalNoUnmountPackage;` to the imports at the top of the file
  - Add `new RNModalNoUnmountPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
    ```
    include ':react-native-modal-no-unmount'
    project(':react-native-modal-no-unmount').projectDir = new File(rootProject.projectDir,   '../node_modules/react-native-modal-no-unmount/android')
    ```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
    ```
      compile project(':react-native-modal-no-unmount')
    ```

## Usage
```javascript
import { Modal, Platform } from 'react-native';
import RNModalNoUnmount from 'react-native-modal-no-unmount';

const ModalComponent = Platform.select({
  ios: RNModalNoUnmount,
  android: Modal,
});

...

render() {
    // Using it exactly as what you are doing with Modal component
    return <ModalComponent>...</ModalComponent>
}
```
