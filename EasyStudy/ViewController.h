//
//  ViewController.h
//  EasyStudy
//
//  Created by Paran Sonthalia on 1/27/15.
//  Copyright (c) 2015 Mango. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController {
    NSString *hi;
    int i;
    UIColor *color;
    IBOutlet UITextField *textField;
    IBOutlet UITextField *textField2;
    IBOutlet UITextField *textField3;
    IBOutlet UITextField *textField4;
    IBOutlet UITextField *textField5;

}
@property (retain, nonatomic) IBOutlet UIScrollView *scrollFrenchRev;
- (IBAction)checkAnswersFrenchRev:(id)sender;


- (IBAction)IndustrialRevolution:(id)sender;
- (IBAction)Enclosure:(id)sender;
- (IBAction)cropRotation:(id)sender;
- (IBAction)industrialization:(id)sender;
- (IBAction)factorsOfProduction:(id)sender;
- (IBAction)factory:(id)sender;
- (IBAction)entrepeneur:(id)sender;
- (IBAction)urbanization:(id)sender;
- (IBAction)middleClass:(id)sender;
- (IBAction)stock:(id)sender;
- (IBAction)corporation:(id)sender;
- (IBAction)laissezFaire:(id)sender;
- (IBAction)adamSmith:(id)sender;
- (IBAction)capitalism:(id)sender;
- (IBAction)utilitarianism:(id)sender;
- (IBAction)socialism:(id)sender;
- (IBAction)karlMarx:(id)sender;
- (IBAction)communism:(id)sender;
- (IBAction)unionWord:(id)sender;
- (IBAction)strike:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *goldTest;

@property (strong, nonatomic, readwrite) IBOutlet UILabel *Word;
@property (strong, nonatomic) IBOutlet UILabel *definition;

@property (retain, nonatomic) IBOutlet UILabel *indQuestion;
@property (retain, nonatomic) IBOutlet UIButton *indAnswer1;
@property (retain, nonatomic) IBOutlet UIButton *indAnswer2;
@property (retain, nonatomic) IBOutlet UIButton *indAnswer3;
@property (retain, nonatomic) IBOutlet UIButton *indAnswer4;

- (IBAction)indAns1:(id)sender;
- (IBAction)indAns2:(id)sender;
- (IBAction)indAns3:(id)sender;
- (IBAction)indAns4:(id)sender;


@property (retain, nonatomic) IBOutlet UILabel *indResult;
- (IBAction)indNext:(id)sender;

@property (retain, nonatomic) IBOutlet UIScrollView *indScroller;

- (IBAction)redBg:(id)sender;
- (IBAction)cyanBg:(id)sender;
- (IBAction)blueBg:(id)sender;
- (IBAction)greenBg:(id)sender;
- (IBAction)orangeBg:(id)sender;
- (IBAction)brownBg:(id)sender;
- (IBAction)yellowBg:(id)sender;
- (IBAction)goldBg:(id)sender;


@property (retain, nonatomic) IBOutlet UIView *storeBg;
@property (retain, nonatomic) IBOutlet UIView *mainBg;
@property (retain, nonatomic) IBOutlet UIView *SubjectsBg;
@property (retain, nonatomic) IBOutlet UIView *indTermsBg;
@property (retain, nonatomic) IBOutlet UIView *indDefBg;
@property (retain, nonatomic) IBOutlet UIView *indQuizBg;


@property (retain, nonatomic) IBOutlet ADBannerView *adViewHome;
@property (retain, nonatomic) IBOutlet ADBannerView *adView1;
@property (retain, nonatomic) IBOutlet ADBannerView *adView2;
@property (retain, nonatomic) IBOutlet ADBannerView *adView3;
@property (retain, nonatomic) IBOutlet ADBannerView *adView4;


@property (retain, nonatomic) IBOutlet UIProgressView *indRevStatBar;

@property (retain, nonatomic) IBOutlet UIButton *frenchRevVisual;



@end

