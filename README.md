# DCShade
DCShade allow you to create a fantastic shade in UIView in easy way
#Features

* Start color
* End color
* Blur effect

#What does it look like?

![esempio.png](http://www.iprog.it/blog/wp-content/uploads/2016/09/esempio.png)
#How do I add it?
### Setting up with [CocoaPods](http://cocoapods.org/)

```
pod 'DCShade'
```

Then:

``` 
import DCShade
```

You can use DCShade `via code` or using `Identity Inspector`
###Via Code

```
@IBOutlet var customView: DCShade!
customView.startColor = UIColor.brownColor()
customView.endColor = UIColor.yellowColor()
customView.bluerEffect(UIBlurEffectStyle.ExtraLight)
```

###Identity Inspector

![identity.png](http://www.iprog.it/blog/wp-content/uploads/2016/09/identity.png =650x)




