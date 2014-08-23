# MIBadgeButton

[![Version](http://cocoapod-badges.herokuapp.com/v/MIBadgeButton/badge.png)](http://cocoadocs.org/docsets/MIBadgeButton)
[![Platform](http://cocoapod-badges.herokuapp.com/p/MIBadgeButton/badge.png)](http://cocoadocs.org/docsets/MIBadgeButton)


MIBadgeButton is badge button with high UITableView/UICollectionView performance.

## Usage

To run the example project; clone the repo, and run `pod install` from the Project directory first.

## Screenshots

![alt tag](https://raw.github.com/mustafaibrahim989/MIBadgeButton/master/Project/screentshot.png)

## Installation

MIBadgeButton is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "MIBadgeButton"
    
Then add to your viewcontroller

    MIBadgeButton *btn1 = [MIBadgeButton buttonWithType:UIButtonTypeCustom];
    [btn1 setFrame:CGRectMake(100, 150, 64, 30)];
    [btn1 setTitle:@"test" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setBadgeString:@"244"];
    [self.view addSubview:btn1];
    
Set EdgeInsets to change the default position of the badge (Optional)

    [btn1 setBadgeEdgeInsets:UIEdgeInsetsMake(12, 0, 0, 12)];

## Author

Mustafa Ibrahim, mibrahim@youxel.com

Notes
============

Designed for iOS 6 and iOS 7.

## License

MIBadgeButton is available under the MIT license. See the LICENSE file for more info.

