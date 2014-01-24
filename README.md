#Konvenience
a living collection of convenience classes and categories for iOS development

#UIView+Konvenience

###Borders

Easily modify the border color and width of a UIView

-

Set the border's color and width in one call:

```objective-c
[view setBorderColor:[UIColor redColor] andBorderWidth:50];
```

Set the border's color:

```objective-c
[view setBorderColor:[UIColor blueColor]];
```

Set the border's size:

```objective-c
[view setBorderWidth:30];
```

Reset/Clear the borders

```objective-c
[view resetBorders];
```


#UIColor+Konvenience

###Random Colors

Easily generate a random color

-

Random Color with 100% Opacity:

```objective-c
[UIColor randomColorOpaque];
```

Random Color and Opacity:

```objective-c
[UIColor randomColorAndOpacity];
```

Random Color with fixed Opacity:

```objective-c
[UIColor randomColorWithOpacity:0.5];
```


#UIImageView+Konvenience

### Image Animation

This method enables loading and playing of an image sequence in one call with optional callback block.

Note: If looping set to YES, callback will be ignored.

```objective-c
UIImageView * img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"startFrame"]];
// intro animation ( uses introFrames0001.png - introFrames0024.png )
[img animateWithBaseImageName:@"introFrames" totalImages:24 duration:1 loopAnimation:NO andCallback:^(UIImageView *imageView) {
    // loop animation ( uses loopFrames0001.png - loopFrames0024.png )
    [imageView animateWithBaseImageName:@"loopFrames" totalImages:24 duration:1 loopAnimation:YES andCallback:^(UIImageView *imageView) {
        // now looping!
    }];
}];
```
