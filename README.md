CNExpandableButton
==============


Purpose
--------------

`CNExpandableButton` is a single-file iOS 5.0+ non-ARC class (ARC compatible) designed to be used like an expandable `UIButton` ; as seen in the iOS Camera app for the *flash* button.

*Originally inspired by [ExpandyButton](https://github.com/iosdeveloper/ExpandyButton).*

![button samples](http://github.com/ddebin/CNExpandableButton/raw/master/README.png)

*Forked from https://github.com/smartapps-fr/CNExpandableButton adding following features:*

- possibility of showing the toggle icon without a label
- left label padding
- possibility of changing color of the selected item
- getting rid of iOS7 deprecated warning

* Renamed for correct podspec dependency, since specific cocoapods do not forked dependencies"

Properties
--------------

A CNExpandableButton has the following properties:

 - `@property (nonatomic,assign)	BOOL	expanded;`
	Current button status (if expanded or shrunk).

 - `@property (nonatomic,assign)	BOOL	useAnimation;`
	Use animation during button state transitions.

 - `@property (nonatomic,assign)	BOOL	toggleMode;`
	Use button as a toggle (like "HDR On" / "HDR Off" button in camera app).

 - `@property (nonatomic,assign)	CGFloat timeout;`
	To shrink the button after a timeout. Use `0` if you want to disable timeout.

 - `@property (nonatomic,assign)	CGFloat horizontalPadding;`
	Horizontal padding space between items.

 - `@property (nonatomic,assign)	CGFloat verticalPadding;`
	Vertical padding space above and below items.

 - `@property (nonatomic,assign)	CGFloat borderWidth;`
	Width (thickness) of the button border.

 - `@property (nonatomic,assign)	CGFloat innerBorderWidth;`
	Width (thickness) of the inner borders between items.

 - `@property (nonatomic,assign)	NSUInteger selectedItem;`
	Selected item number.

 - `@property (nonatomic,retain)	UIColor *borderColor;`
	Color of the button and inner borders.

 - `@property (nonatomic,retain)	UIColor *textColor;`
	Color of text labels.

 - `@property (nonatomic,retain)	UIFont *labelFont;`
	Font of text labels.

 - `@property (nonatomic,retain)	UIFont *unSelectedLabelFont;`
	Font of unselected text labels. `Nil` if not different from `labelFont`.

 - `@property (nonatomic,readonly) NSArray *labels;`
	Access `UIView` used to draw labels.


Methods
--------------

A CNExpandableButton has the following methods:

 - `- (id)initWithPoint:(CGPoint)point leftTitle:(id)leftTitle buttons:(NSArray *)buttons;`
	*Init* method where you can specify `leftTitle` and `buttons`.

 - `- (void)setSelectedItem:(NSUInteger)selected animated:(BOOL)animated;`
	*Animated* version of `- (void)setSelectedItem:(NSUInteger)selected`.

 - `- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;`
	*Animated* version of `- (void)setExpanded:(BOOL)expanded`.

 - `- (void)setLeftTitle:(id)leftTitle;`
	Set left title view : you can use a `NSString`, an `UIImage` or any `UIView` (but the view must implement `CNExpandableButtonViewSource` protocol).

 - `- (void)setButtons:(NSArray *)buttons;`
	Set buttons views : you can use a `NSString`, an `UIImage` or any `UIView` (but the view must implement `CNExpandableButtonViewSource` protocol).

 - `- (void)disableTimeout;`
	If you want to disable timeout shrunk. You can set `timeout` to `0` also.

 - `- (void)updateDisplay;`
	When modifying button parameters, use this method to update button display.


Protocols
---------------

The `CNExpandableButtonViewSource` protocol, used when you specify the title or the different buttons, has the following methods:

 - `- (CGSize)defaultFrameSize;`
	Returns default frame size of the view, used when expanding the button.

 - `- (void)setHighlighted:(BOOL)highlighted;`
	*Optional*, used to change appearance of selected items.


Usage
---------------

Example : a button with four text labels and a hook when value change.

	NSArray *buttons = [NSArray arrayWithObjects:@"Black", @"Red", @"Green", @"Blue", nil];
	CNExpandableButton *colorButton = [[[CNExpandableButton alloc] initWithPoint:CGPointMake(20, 70) leftTitle:@"Color" buttons:buttons] autorelease];
	[[self view] addSubview:colorButton];
	[colorButton addTarget:self action:@selector(toggleColor:) forControlEvents:UIControlEventValueChanged];


License
---------------

CNExpandableButton is available under the MIT license. See the LICENSE file for more info.
