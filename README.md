# AFNetworkLumberjackLogger

`AFNetworkLumberjackLogger` is an extension for [AFNetworking](http://github.com/AFNetworking/AFNetworking/) 2.0 that logs network requests as they are sent and received.

> `AFNetworkLumberjackLogger` listens for `AFNetworkingOperationDidStartNotification` / `AFNetworkingOperationDidFinishNotification` and `AFNetworkingTaskDidStartNotification` / `AFNetworkingTaskDidFinishNotification` notifications, which are posted by AFNetworking as request operations and session tasks are started and finish. For further customization of logging output, users are encouraged to implement desired functionality by listening for these notifications.

## Usage

Add the following code to `AppDelegate.m -application:didFinishLaunchingWithOptions:`:

``` objective-c
[[AFNetworkLumberjackLogger sharedLogger] startLogging];
```

Now all `AFURLConnectionOperation` and `NSURLSessionTask` objects created by an `AFURLSessionManager` will have their request and response logged to the console, a la:

```
GET http://example.com/foo/bar.json
200 http://example.com/foo/bar.json
```

If the default logging level is too verbose—say, if you only want to know when requests fail—then changing it is as simple as:

``` objective-c
[[AFNetworkLumberjackLogger sharedLogger] setLevel:AFLoggerLevelError];
```

## Contact

Mattt Thompson

- http://github.com/mattt
- http://twitter.com/mattt
- m@mattt.me

## License

AFNetworkLumberjackLogger is available under the MIT license. See the LICENSE file for more info.
