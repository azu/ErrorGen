# ErrorGen

A small library to create `NSError` with description.

## Installation

``` sh
pod "ErrorGen"
```

## Usage

Pretty simple! 

```objc
NSError *error = [ErrorGen errorWithDescription:@"desc"];
error.localizedDescription; // => @"desc"
error.domain; // => App's bundle identifier
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT