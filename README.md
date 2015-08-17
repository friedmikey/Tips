# Tips
Copyright, Michael Friedman, August 13, 2015

--------------------------------------------
I. DESCRIPTION
--------------------------------------------
Tips is my first iOS app. My goal was primarily to learn some simple swift and Xcode features. It is a simple tool to help you calculate the right tip and total you and your friends should pay. For the unfortunate soul who's ordering salad when everyone else is ordering a steak, I've added a feature to make it fair when your extravagant friends say, "Let's just split it, yeah"?

--------------------------------------------
II. DESIGN
--------------------------------------------
Tips is built using Xcode's Interface Builder. The interface was designed using two screens and standard controls to afford the user with straightforward means to control the typical inputs at the end of a meal. In ths first version, some additional design elements were left out, such as animations and additional inputs, such as larger party sizes and tab controllers for each person. The layout was built for a iPhone 5.5 as that was the only screen I could seem to get to launch correctly in the simulator. Future versionsl will work on other screen sizes.

--------------------------------------------
III. FEATURES
--------------------------------------------
1. Party Size: You can select a party size up to six by tapping on the appropriate label. The value here is used to determine the tab and tip breakdown on the next screen. You can return to this screen by tapping the "Close" button on the top right of the second screen, however any inputs on the second screen will be reset.
2. Bill Size: Enter your total check size, including tax. Future releases will break out tax. I couldn't figure out how to retain the "$0.00" formatting once the user entered a number, so for this release the value won't have a "$" label.
3. Tip percentage selector: Tap the tip percentage your party has agreed to leave. A future release will include a custom percentage.
4. How big slider?: Allows you to fairly adjust what you pay versus your friends if you had more or less. If you had less than your friends, slide left. More, slide right. The split of the tab and tip will automatically adjust accordingly and ensure that the waiter gets the correct total.
5. You vs. Them: A simple summary of what you and your friends need to pay.

--------------------------------------------
IV. WALKTHROUGH OF FEATURES
--------------------------------------------
![Alt text](https://cloud.githubusercontent.com/assets/11700283/9296595/56aa6150-4445-11e5-8602-eeed67276c9f.gif "Tips Walkthrough")

--------------------------------------------
V. TIME SPENT ON PROJECT
--------------------------------------------
Approximately ten hours.

--------------------------------------------
VI. STORIES COMPLETED
--------------------------------------------
1. Tips calculator
2. Optional Tasks: not included, however I experimented with adding other features on my own:
  *  Party size calculation
  *  Second launch screen
  *  Slider for varying tab size

--------------------------------------------
VI. FUTURE RELEASES
--------------------------------------------
1. Additional screen size support
2. Custom party size
3. Tax breakout
4. Custom tip percentage
5. Individual how big sliders for each person

