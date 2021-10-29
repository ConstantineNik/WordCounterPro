# WordCounterPro

1) Explain some differences between a modal and push navigation.

    **Answer:** 
     * push Segue is adding another VC to navigation stack
     * push Segue: child VC contains default back button
     * push Segue: child VC have navigation bar on top by default
     * push Segue: child VC will be added on top of the navigation stack
     * modal Segue is adding another VC modally (not full screen by default)
     * modal Segue is usually do not have any navigation bars or tab bars
     * modal Segue do not must to be a part of a navigation controller
     * modal Segue is usually a child of  of the presenting VC

2) When is it preferred to use `Keychain Services`, `UserDefaults` or `Core Data`? Please explain some different scenarios or use cases.

    **Answer:** 
    * Keychain Services used for storing metadata and sensitive information. It is the best way to store important data, for example secrets and passwords.
    * UserDefaults used for storing any basic data and exists as long as the app is installed (deletes when the app is removing). For example, we can store language, some user settings (notification enabled and so on). Used for small amounts of data.
    * Core Data used for storing permanent data for offline use, to cache temporary data, and to add undo functionality to your app on a single device. Also it is usefull for data sync across multiple devices in a single account.

3) Given the following function inside a `UIViewController`, what can go wrong here?:
```swift
func fetchData() {
    service.fetchFromAPI { result in
        self.data = result
    }
}
```
    **Answer:**  
    * we must to handle errors and success (for example use Result type)
    * will be good to parse data on this stage, usually raw data is not used (used parsed data)

4) Give a brief explanation of protocol oriented programming.

    **Answer:**  
    Protocols is one of the most important Swift functionallity. They are used throughout standard libraries and frameworks. Protocols is like interfaces in other languages. In protocols we specify properties and functions, which must be implemented in classes or struct, which accepted these protocols. Protocols allow to make code more modular and easy to mainatance. An advantage is that objects can conform to multiple protocols. Also protocols can conform to other protocols and define default behaviors. Protocol extensions defines basic logic of protocol methods and if you want you can use default implementation or oveeride it. In addition to extending your own protocols, you can extend protocols from the Swift standard library. Protocols allows you to improve reusability and maintainability of your app and to make changes to your Swift app codebase with more confidence.
