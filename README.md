# Azoera
Design for an iPhone  8 (Because the sketch designs are for an iPhone 8) - However the interface should scale well to any screen size including iPads.

During this lecture you should thoroughly explain.  Please prepare by reading the linked materials:
	* Responsive storyboard constraints
	* [UIStackViews](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/LayoutUsingStackViews.html) and how they can simplify constraints and make our layouts more responsive
	* [Intrinsic content size](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/ViewswithIntrinsicContentSize.html)
	* [Content Compression and Content Hugging Priority](https://medium.com/@abhimuralidharan/ios-content-hugging-and-content-compression-resistance-priorities-476fb5828ef)
	* Best practices for building and maintaining UI


## Part 1 - Auto Layout
1. Drag Three Text Fields onto the screen, adjust their placeholder text to fit the sketch design, embed them within a Stack View.
2. Set the Stack View’s alignment to Fill and its distribution to fill equally.  This make all the contained Text Fields uniform
3. We’ll want these Text Fields to be 255 px wide according to the sketch design.  If we hardcode 255 px it will only fit the designs for an iPhone 8.  In order to accommodate all phones, we should figure out what percentage of an iPhone 8’s width 255 px is.  That will come out to around 68%.  **Give the Text Field Stack View a proportional width to the screen of 0.68.**
4. Drag Two Buttons onto the screen, with titles of “Log in” and “Sign Up" embed them within a stack view
5. Embed the stack view of buttons, and the stack view of Text Fields in another stack view.
6. Change this outer Stack View’s spacing to 0 and its alignment to Fill.  
7. You should now get a red constraint error for the inner button stack view which.  There is ambiguity between the buttons and AutoLayout will suggest adjusting the Vertical hugging priority here.  Explain why AutoLayout can’t infer how to size the buttons.  **The easy solution is just to size the buttons equally by changing the button Stack View’s distribution to Fill.**
8. We now need to constrain this outer stack view to the Super View’s safe area.  **Constrain the leading side of the stack view 0 px from the safe area and the trailing side -16px from the trailing edge of the safe area** (the negative will give us the effect in the designs of the Text Fields running off the screen).  Center the outer StackView Vertically in the container
9. Take a moment to compare your current scene to the sketch designs.  Ignore the vertical orientation of the buttons for now, and point out that our Text Fields are too small by default.

![](README/Screen%20Shot%202019-03-14%20at%204.19.02%20PM.png)
![](README/Screen%20Shot%202019-03-14%20at%204.19.22%20PM.png)
The sketch design’s text fields are 48px tall.   Give one of the Text Fields this constraint- they should all adjust equally.  Take the time to scale around to different device sizes including a 4s or SE.  These textfields end up filling most of the screens height.  Take this time to point out why hardcoding numbers for constraint values leads to unresponsive UI.
10. Change the Text Fields to have a proportional height to safe area of 7.2%.  This will maintain a height of  48 px for the iPhone 8 but scale down for smaller models.
11. Test the layout on the largest iPad available - those text fields look ridiculously large.  So we want them to scale to a point but not beyond a certain size.  **Give the Text Field another height constraint of <= to 60px**.  Adjust the first proportional height constraint to have a priority of 999.  This will tell AutoLayout “try to make the each Text Field 7.2% of the screen **AND** less than or equal to 60px tall, but if you have to choose one, the less than or equal to 60px tall constraint should take precedence”
12. The text fields aren’t quite centered in the sketch design.  You can hold option & drag to see how far away any two elements are in both sketch and Xcode.  Use this to show the outer stack view should be 34 points down from center.  **Add a constant of 34 on the outer Stack Views Align Center Y to Superview constraint.**
13. Let’s now shift to the Help and FAQ buttons below the text fields.  Drag two buttons on to the screen and embed them in a horizontal Stack View.
14. Give the Stack View spacing of 8 px, and constrain it 14 px from the outer Stack View and 14 px from the trailing edge of the Safe Area.
15. Let’s work on the “Sign me up” button next.  Drag a button on to the screen and give it a title of “Sign me up” and any background color other than white (this will help us see the buttons size on the white background), .
16. According to the sketch designs for an iPhone 8.  The button should be 48 px tall. 80 px from the bottom and 60 px from the “Help” & “FAQ” Stack View.  Again, point out,  hardcoding these values will cause our layout to break at different screen sizes.  **Instead you should make the button 7.2% of the superview’s height (similar to our Text Fields).  And center it vertically in a container.  You can then add a multiplier of 1.715 to the vertical center constraint.**  This will place the button in the bottom 71.5 percentage of the screen.
17. Align the leading edge of the button to the leading edge of the textField Stack View and the trailing edge to the 40px from the trailing edge of the super view’s trailing edge.
18. Drag 2 labels onto the screen and make both 16px font.  Adjust the text to match that at the top of the sketch file.
19. Embed both the labels in a StackView.  Give this Stack View a proportional Width to the safe area of 0.84.  Align it to the trailing edge of the screen.  Then center the StackView vertically in the container with a multiplier of 0.55.  This will place the StackView in the top 55% of the top half of the screen.
20. Drag a UIImageView onto the scene.  Give an aspect ratio of 1:1 and a proportional height of 6.7% of the Safe Area.  Center it vertically in the container with a multiplier of  0.25.  

You should now have a dynamic layout of all of the elements on the sketch file.  Test various devices in front of the students and show them how it scales.

## Part 2 - UI Best Practices 
The next section will focus on managing the nuances of UI including colors, fonts, and other styling in an organized an efficient manner.  The structure provided here is just one way or maintaining UI Code.  We are going to leave the storyboard as a skeleton and apply all of our more detailed UI at runtime.

#### Extending UIView
Almost everything within UIKit is a subclass of UIView, and many basic UI properties are housed within this class. This makes extending UIView one of the most versatile places to implement UI code.  
5. Create a new Swift file called StyleGuide.  This will be a helper file for all of our reusable UI related code.
6. In the StyleGuide.swift file, extend UIView and add and explain the following functions.  The default parameters are taken from common reoccurring patterns in the sketch file.
``` swift

func addCornerRadius(_ radius: CGFloat = 4) {
    self.layer.cornerRadius = radius
  }
  
  func addDropShadowWith(size: CGSize = CGSize(width: 0, height: 6), radius: CGFloat = 30, opacity: Float = 0.5) {
    self.layer.shadowOffset = size
    self.layer.shadowRadius = radius
    self.layer.shadowOpacity = opacity
  }
  
  func addAccentBorder(width: Int = 1, color: UIColor = UIColor.borderHighlightGray) {
    self.layer.borderWidth = 1
    self.layer.borderColor = color.cgColor
  }
```
7. Demonstrate the use of these function arbitrarily in the `WelcomeViewController`.  We’ll be using these in the next sections.


#### Adding Custom Fonts
The Starter Project will contain three variations of the Lato font family.  Please direct students to apple documentation on custom fonts for future use. 
[Adding a Custom Font to Your App | Apple Developer Documentation](https://developer.apple.com/documentation/uikit/text_display_and_fonts/adding_a_custom_font_to_your_app)
1. Add this struct of constants to the StyleGuide.swift file which will help us safely reference fonts included in the project.
``` swift
struct FontNames {
  static let latoBold = “Lato-Bold”
  static let latoRegular = “Lato-Regular”
  static let latoLight = “Lato-Light”
}
```

#### Managing Colors
4. Create a new Assets folder called “Colors”. Which will contain all of the colors used within the app. 
5. Walk through creating the green accent color and space gray background with the students by creating a new color set pulling the hex codes from the sketch file.  Name them “greenAccent” and  “spaceGray” respectively.  You can send them the Colors Assets folder from this Github project after these two to save time creating the rest.

7. In the StyleGuide.swift file, extend UIColor and create static constants which pull in UIColors from your new assets folder. 

For example:
``` swift
extension UIColor{
	static let greenAccent = UIColor(named: “greenAccent”)!
}
```

Naming and referencing each color in this way will allow us to dynamically change any color universally throughout the app in one click.

#### Subclassing UIElements
Often times it can be much easier to subclass a UIElement and apply the styles within that subclass, rather than applying the code every time that element applies in a view controller.  We will demonstrate this using the UITextFields on this scene.
5. Create a new CocoaTouch Class as a subclass of UITextField named `AzoeraTextField`.   Declare a `func setUpUI()`  which will be called within `awakeFromNib()`.
6. Implement the `setUpUI()` function to:
	1. Update the placeholder text
	2. Add a corner radius of 10 px (Use the function we just wrote in our UIView extension)
	3. Add an accent border (Use the function we just wrote in our UIView extension)
	4. Change the text color
	5. Update the font to Lato Regular using this function:
``` swift
  func updateFontTo(fontName: String){
    guard let size = self.font?.pointSize else { return}
    self.font = UIFont(name: fontName, size: size)!
  }
```

7. In the StoryBoard Subclass each of the text fields as an `AzoeraTextField`.  Run the project to demonstrate the UI changes.
8. Repeat the same pattern to create a custom Button for the app and custom labels.

#### UI Implementation Time 
1. Create a new UIViewController subclass called `WelcomeViewController`
2.  and assign it to your storyboard scene. 
3. Drag in all of the necessary outlets and actions.
4. Declare a `func setUpUI()` with an empty implementation for now.  Call the function in `viewDidLoad()`. This will contain all of our initial UI set up.
5. Use the functions from our UIView extension and update all UIElements as necessary referencing the master project.
6. Run the project to showcase the new UI.  
