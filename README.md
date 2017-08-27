
# react-native-react-native-twitter

## Getting started

`$ npm install react-native-react-native-twitter --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-twitter`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-twitter` and add `RNReactNativeTwitter.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeTwitter.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeTwitterPackage;` to the imports at the top of the file
  - Add `new RNReactNativeTwitterPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-twitter'
  	project(':react-native-react-native-twitter').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-twitter/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-twitter')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNReactNativeTwitter.sln` in `node_modules/react-native-react-native-twitter/windows/RNReactNativeTwitter.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNReactNativeTwitter;` to the usings at the top of the file
  - Add `new RNReactNativeTwitterPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNReactNativeTwitter from 'react-native-react-native-twitter';

// TODO: What to do with the module?
RNReactNativeTwitter;
```
  