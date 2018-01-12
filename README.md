
# react-native-modal-no-unmount

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
  	project(':react-native-modal-no-unmount').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-modal-no-unmount/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-modal-no-unmount')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNModalNoUnmount.sln` in `node_modules/react-native-modal-no-unmount/windows/RNModalNoUnmount.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Modal.No.Unmount.RNModalNoUnmount;` to the usings at the top of the file
  - Add `new RNModalNoUnmountPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNModalNoUnmount from 'react-native-modal-no-unmount';

// TODO: What to do with the module?
RNModalNoUnmount;
```
  