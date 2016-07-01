#Xealth - SDK Demo

*this project uses the pod prepared in ../rn-packager, and display it*

### Steps:

1. `pod install` to pull in the Xealth Framework

### To Customize:

1. `@import Xealth;`
2. put 
    
    ```objective-c
    [[XealthView alloc] initWithProperties:...]
    ```
    or
    
    ```swift
    XealthView(properties: ...)
    ```
    where you want it
