//
//  ViewController.m
//  EasyStudy
//
//  Created by Paran Sonthalia on 1/27/15.
//  Copyright (c) 2015 Mango. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <iAd/iAd.h>

@interface ViewController () {

}
@end

@implementation ViewController

@synthesize Word, definition, indAnswer1, indAnswer2, indAnswer3, indAnswer4, indQuestion, indResult, indScroller, goldTest, storeBg, mainBg, SubjectsBg, indTermsBg, indDefBg, indQuizBg, adViewHome, adView1, adView2, adView3, adView4, indRevStatBar, scrollFrenchRev, frenchRevVisual;


-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    frenchRevVisual.titleLabel.numberOfLines = 0;
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    
    self.adViewHome.delegate = self;
    self.adView1.delegate = self;
    self.adView2.delegate = self;
    self.adView3.delegate = self;
    self.adView4.delegate = self;
    
    NSLog(appDelegate.progress);
    
    indRevStatBar.progress = appDelegate.progress;
}
- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.goldTest.text = [defaults objectForKey:@"gold"];
    NSLog(goldTest.text);
    
    UIColor *test = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
    
    if ([[defaults objectForKey:@"color"]  isEqual: @"red"]) {
        self.storeBg.backgroundColor = [UIColor redColor];
        self.mainBg.backgroundColor = [UIColor redColor];
        self.SubjectsBg.backgroundColor = [UIColor redColor];
        self.indTermsBg.backgroundColor = [UIColor redColor];
        self.indDefBg.backgroundColor = [UIColor redColor];
        self.indQuizBg.backgroundColor = [UIColor redColor];
    }
    else if ([[defaults objectForKey:@"color"]  isEqual: @"cyan"]) {
        self.storeBg.backgroundColor = [UIColor cyanColor];
        self.mainBg.backgroundColor = [UIColor cyanColor];
        self.SubjectsBg.backgroundColor = [UIColor cyanColor];
        self.indTermsBg.backgroundColor = [UIColor cyanColor];
        self.indDefBg.backgroundColor = [UIColor cyanColor];
        self.indQuizBg.backgroundColor = [UIColor cyanColor];
    }
    else if ([[defaults objectForKey:@"color"]  isEqual: @"blue"]) {
        self.storeBg.backgroundColor = [UIColor blueColor];
        self.mainBg.backgroundColor = [UIColor blueColor];
        self.SubjectsBg.backgroundColor = [UIColor blueColor];
        self.indTermsBg.backgroundColor = [UIColor blueColor];
        self.indDefBg.backgroundColor = [UIColor blueColor];
        self.indQuizBg.backgroundColor = [UIColor blueColor];
    }
    else if ([[defaults objectForKey:@"color"]  isEqual: @"green"]) {
        self.storeBg.backgroundColor = [UIColor greenColor];
        self.mainBg.backgroundColor = [UIColor greenColor];
        self.SubjectsBg.backgroundColor = [UIColor greenColor];
        self.indTermsBg.backgroundColor = [UIColor greenColor];
        self.indDefBg.backgroundColor = [UIColor greenColor];
        self.indQuizBg.backgroundColor = [UIColor greenColor];
    }
    else if ([[defaults objectForKey:@"color"]  isEqual: @"orange"]) {
        self.storeBg.backgroundColor = [UIColor orangeColor];
        self.mainBg.backgroundColor = [UIColor orangeColor];
        self.SubjectsBg.backgroundColor = [UIColor orangeColor];
        self.indTermsBg.backgroundColor = [UIColor orangeColor];
        self.indDefBg.backgroundColor = [UIColor orangeColor];
        self.indQuizBg.backgroundColor = [UIColor orangeColor];
    }
    else if ([[defaults objectForKey:@"color"]  isEqual: @"brown"]) {
        self.storeBg.backgroundColor = [UIColor brownColor];
        self.mainBg.backgroundColor = [UIColor brownColor];
        self.SubjectsBg.backgroundColor = [UIColor brownColor];
        self.indTermsBg.backgroundColor = [UIColor brownColor];
        self.indDefBg.backgroundColor = [UIColor brownColor];
        self.indQuizBg.backgroundColor = [UIColor brownColor];
    }
    else if ([[defaults objectForKey:@"color"]  isEqual: @"yellow"]) {
        self.storeBg.backgroundColor = [UIColor yellowColor];
        self.mainBg.backgroundColor = [UIColor yellowColor];
        self.SubjectsBg.backgroundColor = [UIColor yellowColor];
        self.indTermsBg.backgroundColor = [UIColor yellowColor];
        self.indDefBg.backgroundColor = [UIColor yellowColor];
        self.indQuizBg.backgroundColor = [UIColor yellowColor];
    }

    else if ([[defaults objectForKey:@"color"]  isEqual: @"gold"]) {
        self.storeBg.backgroundColor = test;
        self.mainBg.backgroundColor = test;
        self.SubjectsBg.backgroundColor = test;
        self.indTermsBg.backgroundColor = test;
        self.indDefBg.backgroundColor = test;
        self.indQuizBg.backgroundColor = test;
    }
    else {
        self.storeBg.backgroundColor = test;
        self.mainBg.backgroundColor = test;
        self.SubjectsBg.backgroundColor = test;
        self.indTermsBg.backgroundColor = test;
        self.indDefBg.backgroundColor = test;
        self.indQuizBg.backgroundColor = test;
    }
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //appDelegate.goldInt = [defaults objectForKey:@"gold"];

    /*hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
    goldTest.text = hi;
    NSLog(hi);*/
    
    [indAnswer1.titleLabel setTextAlignment: NSTextAlignmentCenter];
    [indAnswer2.titleLabel setTextAlignment: NSTextAlignmentCenter];
    [indAnswer3.titleLabel setTextAlignment: NSTextAlignmentCenter];
    [indAnswer4.titleLabel setTextAlignment: NSTextAlignmentCenter];
    

    
    [self.indScroller setScrollEnabled: YES];
    [self.indScroller setContentSize:(CGSizeMake(320, 950))];
    
    [self.scrollFrenchRev setScrollEnabled: YES];
    [self.scrollFrenchRev setContentSize:(CGSizeMake(320, 812))];
    
    Word.text = appDelegate.indWord;
    definition.text = appDelegate.indDef;
    // Do any additional setup after loading the view, typically from a nib.
    textField.delegate = self;
    textField2.delegate = self;
    textField3.delegate = self;
    textField4.delegate = self;
    textField5.delegate = self;


}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    [textField2 resignFirstResponder];
    [textField3 resignFirstResponder];
    [textField4 resignFirstResponder];
    [textField5 resignFirstResponder];

    return NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkAnswersFrenchRev:(id)sender {
    NSLog(@"button clicked");
}

- (IBAction)IndustrialRevolution:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    appDelegate.progress = indRevStatBar.progress + 0.05;
    indRevStatBar.progress = appDelegate.progress;
    
    appDelegate.indWord = @"Industrial Revolution";
    appDelegate.indDef = @"The shift, beginning in England during the 18th century, from making goods by hand to making them by machine";
}

- (IBAction)Enclosure:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Enclosure";
    appDelegate.indDef = @"One of the fenced-in or hedged in fields created by wealthy British landowners on land that was formerly worked by village farmers";
}

- (IBAction)cropRotation:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Crop Rotation";
    appDelegate.indDef = @"The system of growing a different crop in a field each year to preserve the fertility of the land";
}

- (IBAction)industrialization:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Industrialization";
    appDelegate.indDef = @"The development of industries for the machine production of goods";
}

- (IBAction)factorsOfProduction:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Factors of Production";
    appDelegate.indDef = @"The resources - including land, labor, and capital - that are needed to produced goods and services";
}

- (IBAction)factory:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Factory";
    appDelegate.indDef = @"A large building in which machinery is used to manufacture goods";
}

- (IBAction)entrepeneur:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Entrepreneur";
    appDelegate.indDef = @"A person who organizes, manages, and takes on the risks of a business";
}

- (IBAction)urbanization:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Urbanization";
    appDelegate.indDef = @"The growth of cities and the migration of people into them";
}

- (IBAction)middleClass:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Middle Class";
    appDelegate.indDef = @"A social class made up of skilled workers, professionals, businesspeople, and wealthy farmers";
}

- (IBAction)stock:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Stock";
    appDelegate.indDef = @"Certain rights of ownership sold by entrepreneurs to raise money to start a company";
}

- (IBAction)corporation:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Corporation";
    appDelegate.indDef = @"A business owned by stockholders who share in its profits but are not personally responsible for its debts";
}

- (IBAction)laissezFaire:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Laissez faire";
    appDelegate.indDef = @"The idea that government should not interfere with or regulate industries and businesses";
}

- (IBAction)adamSmith:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Adam Smith";
    appDelegate.indDef = @"Author of The Wealth of Nations and one of the main founders of Laissez-faire economics and Capitalism with the idea of a free economy";
}

- (IBAction)capitalism:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Capitalism";
    appDelegate.indDef = @"An economic system based on private ownership and on the investment of money in business ventures in order to make a profit";
}

- (IBAction)utilitarianism:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Utalitarianism";
    appDelegate.indDef = @"The theory proposed by Jeremy bentham in the late 1700s, that government actions are useful only if they promote the greatest good for the greatest number of people";
}

- (IBAction)socialism:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Socialism";
    appDelegate.indDef = @"An economic system in which the factors of production are owned by the public and operate for the welfare of all";
}

- (IBAction)karlMarx:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Karl Marx";
    appDelegate.indDef = @"Author of The Communist Manifesto, and founder of Marxism, a form of radical socialism, also first author to describe communism";
}

- (IBAction)communism:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Communism";
    appDelegate.indDef = @"An economic system in which all means of production - land, mines, factories, railroads, and businesses - are owned by the people, private property does not exist, and all goods and services are shared equally.";
}

- (IBAction)unionWord:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Union";
    appDelegate.indDef = @"An association of workers, formed to bargain for better working conditions and higher wages";
}

- (IBAction)strike:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    indRevStatBar.progress = indRevStatBar.progress + 0.05;
    appDelegate.indWord = @"Strike";
    appDelegate.indDef = @"To refuse to work in order to force an employer to meet certain demands";
}
- (IBAction)indNext:(id)sender {
    if ([indQuestion.text  isEqual: @"What was the Industrial Revolution?"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
            indQuestion.text = @"What were the three factors of production required to drive the industrial revolution?";
            [indAnswer1 setTitle:@"Machines, factories, urban workers" forState:UIControlStateNormal];
            [indAnswer2 setTitle:@"Road, railway, and water transport" forState:UIControlStateNormal];
            [indAnswer3 setTitle:@"Raw materials, natural resources, man-made goods" forState:UIControlStateNormal];
            [indAnswer4 setTitle:@"Land, labor, capital" forState:UIControlStateNormal];
            indResult.text = @"";
        }
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
            [alert1 setTag:2];
            [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
           /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
            
            [alert setTag:1];
            [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
        
        
    }
    else if ([indQuestion.text  isEqual: @"What were the three factors of production required to drive the industrial revolution?"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"Which of the following movements resulted in small farmers/peasants being kicked off of the farms?";
        [indAnswer1 setTitle:@"Industrial" forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"Enclosure" forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"Counter-culture" forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"Fair Trade" forState:UIControlStateNormal];
        indResult.text = @"";
        }
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"Which of the following movements resulted in small farmers/peasants being kicked off of the farms?"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"Which of the following was a result of the agricultural revolution?";
        [indAnswer1 setTitle:@"Many small farmers became tenant farmers or moved to cities" forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"Crop yields increased with the new inventions such as the seed drill" forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"Enclosures became landmarks of wealthy landowners." forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"All of the above" forState:UIControlStateNormal];
        indResult.text = @"";
        }
        
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"Which of the following was a result of the agricultural revolution?"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"Which of the following did NOT increase as an early result of the Industrial Revolution?";
        [indAnswer1 setTitle:@"The availability of textile products" forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"The life expectancy of the average city worker" forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"The length of the average work day" forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"The size of the middle class" forState:UIControlStateNormal];
        indResult.text = @"";
        }
        
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"Which of the following did NOT increase as an early result of the Industrial Revolution?"]) {
        
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"As the Industrial Revolution went on, which of the following got bigger/larger?";
        [indAnswer1 setTitle:@"The number of farmers" forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"The number of slaves" forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"The population in the cities" forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"The size of families" forState:UIControlStateNormal];
        indResult.text = @"";
        }
        
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"As the Industrial Revolution went on, which of the following got bigger/larger?"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"The teachings of Thomas Malthus and David Ricardo were used to:";
        [indAnswer1 setTitle:@"Undermine conservative beliefs" forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"Promote utopian schemes of social reorganization" forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"Oppose social welfare reform" forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"Promote minimum wage laws and better working conditions" forState:UIControlStateNormal];
        indResult.text = @"";
        }
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"The teachings of Thomas Malthus and David Ricardo were used to:"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"Which of the following was not one of the ways in which workers resisted harsh treatment?";
        [indAnswer1 setTitle:@"Forming their own businesses to compete with their original bosses" forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"Frequently assassinating unpopular factory owners" forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"Doing poor-quality work" forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"Rioting and going on strike" forState:UIControlStateNormal];
        indResult.text = @"";
        }
        
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"Which of the following was not one of the ways in which workers resisted harsh treatment?"]) {
        if ([indResult.text  isEqual: @"CORRECT"]) {
        indQuestion.text = @"Urban planning methods in replacing old, crowded cities included";
        [indAnswer1 setTitle:@"Creating “planned communities” with all amenities within walking distance of miniature villages." forState:UIControlStateNormal];
        [indAnswer2 setTitle:@"Maintaining traditional streets to appeal to national historical memory." forState:UIControlStateNormal];
        [indAnswer3 setTitle:@"Organizing neighborhoods according to immigrant nationality." forState:UIControlStateNormal];
        [indAnswer4 setTitle:@"Laying out new cities on rectangular grids." forState:UIControlStateNormal];
        indResult.text = @"";
        }
        
        else if ([indResult.text  isEqual: @"WRONG"]) {
            /*UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle: @"Wrong Choice" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
             [alert1 setTag:2];
             [alert1 show];*/
            UIAlertView* alert1 = [[UIAlertView alloc] initWithTitle:@"Wrong Choice"
                                                             message:@"Please select the correct choice before proceeding"
                                                            delegate:self
                                                   cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert1 show];
            [alert1 release];
        }
        else {
            /* UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"No Answer Choice Picked" message: @"Please select the correct choice before proceeding" delegate: self cancelButtonTitle:@"Ok",nil];
             
             [alert setTag:1];
             [alert show];*/
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"No Answer Choice Picked"
                                                            message:@"Please select the correct choice before proceeding"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
            [alert show];
            [alert release];
        }
    }
    else if ([indQuestion.text  isEqual: @"Urban planning methods in replacing old, crowded cities included"]) {
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        appDelegate.goldInt = appDelegate.goldInt+10;
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        
        NSUserDefaults *gold = [NSUserDefaults standardUserDefaults];
        [gold setValue:hi forKey:@"gold"];
        [gold synchronize];
        
        
        
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"10 Gold Received!"
                                                        message:@"You have received 10 Gold, this can be used to purchase items from the store."
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}
- (IBAction)indAns1:(id)sender {
    if([indQuestion.text  isEqual: @"What was the Industrial Revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"What were the three factors of production required to drive the industrial revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following movements resulted in small farmers/peasants being kicked off of the farms?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following was a result of the agricultural revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following did NOT increase as an early result of the Industrial Revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"As the Industrial Revolution went on, which of the following got bigger/larger?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"The teachings of Thomas Malthus and David Ricardo were used to:"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following was not one of the ways in which workers resisted harsh treatment?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Urban planning methods in replacing old, crowded cities included"]) {
        indResult.text = @"WRONG";
    }
}
- (IBAction)indAns2:(id)sender {
    if([indQuestion.text  isEqual: @"What was the Industrial Revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"What were the three factors of production required to drive the industrial revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following movements resulted in small farmers/peasants being kicked off of the farms?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"Which of the following was a result of the agricultural revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following did NOT increase as an early result of the Industrial Revolution?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"As the Industrial Revolution went on, which of the following got bigger/larger?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"The teachings of Thomas Malthus and David Ricardo were used to:"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following was not one of the ways in which workers resisted harsh treatment?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"Urban planning methods in replacing old, crowded cities included"]) {
        indResult.text = @"WRONG";
    }
}
- (IBAction)indAns3:(id)sender {
    if([indQuestion.text  isEqual: @"What was the Industrial Revolution?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"What were the three factors of production required to drive the industrial revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following movements resulted in small farmers/peasants being kicked off of the farms?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following was a result of the agricultural revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following did NOT increase as an early result of the Industrial Revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"As the Industrial Revolution went on, which of the following got bigger/larger?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"The teachings of Thomas Malthus and David Ricardo were used to:"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"Which of the following was not one of the ways in which workers resisted harsh treatment?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Urban planning methods in replacing old, crowded cities included"]) {
        indResult.text = @"WRONG";
    }
}
- (IBAction)indAns4:(id)sender {
    if([indQuestion.text  isEqual: @"What was the Industrial Revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"What were the three factors of production required to drive the industrial revolution?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"Which of the following movements resulted in small farmers/peasants being kicked off of the farms?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following was a result of the agricultural revolution?"]) {
        indResult.text = @"CORRECT";
    }
    if([indQuestion.text  isEqual: @"Which of the following did NOT increase as an early result of the Industrial Revolution?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"As the Industrial Revolution went on, which of the following got bigger/larger?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"The teachings of Thomas Malthus and David Ricardo were used to:"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Which of the following was not one of the ways in which workers resisted harsh treatment?"]) {
        indResult.text = @"WRONG";
    }
    if([indQuestion.text  isEqual: @"Urban planning methods in replacing old, crowded cities included"]) {
        indResult.text = @"CORRECT";
    }
}

- (IBAction)redBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
   // appDelegate.goldInt = [color objectForKey:@"gold"];
    
    
    if (appDelegate.goldInt >= 20) {
        
        int gold3;
        
        self.storeBg.backgroundColor = [UIColor redColor];
        self.mainBg.backgroundColor = [UIColor redColor];
        self.SubjectsBg.backgroundColor = [UIColor redColor];
        self.indTermsBg.backgroundColor = [UIColor redColor];
        self.indDefBg.backgroundColor = [UIColor redColor];
        self.indQuizBg.backgroundColor = [UIColor redColor];
        
        gold3 = appDelegate.goldInt;
        
        gold3 = gold3 - 20;
        hi = [NSString stringWithFormat:@"%d", gold3];
        
        [color setValue:hi forKey:@"gold"];
        
        goldTest.text = hi;
        
        [color setValue:@"red" forKey:@"color"];
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)cyanBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        self.storeBg.backgroundColor = [UIColor cyanColor];
        self.mainBg.backgroundColor = [UIColor cyanColor];
        self.SubjectsBg.backgroundColor = [UIColor cyanColor];
        self.indTermsBg.backgroundColor = [UIColor cyanColor];
        self.indDefBg.backgroundColor = [UIColor cyanColor];
        self.indQuizBg.backgroundColor = [UIColor cyanColor];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        
        [color setValue:hi forKey:@"gold"];
        
        goldTest.text = hi;
        
        [color setValue:@"cyan" forKey:@"color"];
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)blueBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        self.storeBg.backgroundColor = [UIColor blueColor];
        self.mainBg.backgroundColor = [UIColor blueColor];
        self.SubjectsBg.backgroundColor = [UIColor blueColor];
        self.indTermsBg.backgroundColor = [UIColor blueColor];
        self.indDefBg.backgroundColor = [UIColor blueColor];
        self.indQuizBg.backgroundColor = [UIColor blueColor];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        goldTest.text = hi;

        
        [color setValue:hi forKey:@"gold"];
        
        [color setValue:@"blue" forKey:@"color"];
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)greenBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        self.storeBg.backgroundColor = [UIColor greenColor];
        self.mainBg.backgroundColor = [UIColor greenColor];
        self.SubjectsBg.backgroundColor = [UIColor greenColor];
        self.indTermsBg.backgroundColor = [UIColor greenColor];
        self.indDefBg.backgroundColor = [UIColor greenColor];
        self.indQuizBg.backgroundColor = [UIColor greenColor];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        
        goldTest.text = hi;

        
        [color setValue:hi forKey:@"gold"];
        
        [color setValue:@"green" forKey:@"color"];
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)orangeBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        self.storeBg.backgroundColor = [UIColor orangeColor];
        self.mainBg.backgroundColor = [UIColor orangeColor];
        self.SubjectsBg.backgroundColor = [UIColor orangeColor];
        self.indTermsBg.backgroundColor = [UIColor orangeColor];
        self.indDefBg.backgroundColor = [UIColor orangeColor];
        self.indQuizBg.backgroundColor = [UIColor orangeColor];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        
        goldTest.text = hi;

        
        [color setValue:hi forKey:@"gold"];
        
        [color setValue:@"orange" forKey:@"color"];
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)brownBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        self.storeBg.backgroundColor = [UIColor brownColor];
        self.mainBg.backgroundColor = [UIColor brownColor];
        self.SubjectsBg.backgroundColor = [UIColor brownColor];
        self.indTermsBg.backgroundColor = [UIColor brownColor];
        self.indDefBg.backgroundColor = [UIColor brownColor];
        self.indQuizBg.backgroundColor = [UIColor brownColor];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        goldTest.text = hi;

        
        [color setValue:hi forKey:@"gold"];
        
        [color setValue:@"brown" forKey:@"color"];
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)yellowBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        self.storeBg.backgroundColor = [UIColor yellowColor];
        self.mainBg.backgroundColor = [UIColor yellowColor];
        self.SubjectsBg.backgroundColor = [UIColor yellowColor];
        self.indTermsBg.backgroundColor = [UIColor yellowColor];
        self.indDefBg.backgroundColor = [UIColor yellowColor];
        self.indQuizBg.backgroundColor = [UIColor yellowColor];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        goldTest.text = hi;

        
        [color setValue:hi forKey:@"gold"];
        
        [color setValue:@"yellow" forKey:@"color"];
        [color synchronize];
        
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)goldBg:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSUserDefaults *color = [NSUserDefaults standardUserDefaults];
    NSString *gold5 = [color objectForKey:@"gold"];
    appDelegate.goldInt = [gold5 intValue];
    
    
    if (appDelegate.goldInt >= 20) {
        appDelegate.goldInt = appDelegate.goldInt - 20;
        
        self.storeBg.backgroundColor = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
        self.mainBg.backgroundColor = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
        self.SubjectsBg.backgroundColor = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
        self.indTermsBg.backgroundColor = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
        self.indDefBg.backgroundColor = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
        self.indQuizBg.backgroundColor = [UIColor colorWithRed:217.0/255 green:166.0/255 blue:62.0/255 alpha:1.0];
        
        hi = [NSString stringWithFormat:@"%d", appDelegate.goldInt];
        goldTest.text = hi;

        
        [color setValue:hi forKey:@"gold"];
        [color setValue:@"gold" forKey:@"color"];
        
        [color synchronize];
        
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Not Enough Gold"
                                                        message:@"Please earn more gold by completing quizzes"
                                                       delegate:self
                                              cancelButtonTitle:@"Back" otherButtonTitles:@"Ok" ,nil];
        [alert show];
        [alert release];
    }
}



-(void) dealloc {
    [frenchRevVisual release];
    [super dealloc];
    [indQuestion release];
    [indAnswer1 release];
    [indAnswer2 release];
    [indAnswer3 release];
    [indAnswer4 release];
    [indResult release];
    [indScroller release];
    [goldTest release];
    [storeBg release];
    [mainBg release];
    [SubjectsBg release];
    [indTermsBg release];
    [indDefBg release];
    [indQuizBg release];
    [adViewHome release];
    [adView1 release];
    [adView2 release];
    [adView3 release];
    [adView4 release];
    [indRevStatBar release];
    [textField release];
    [textField2 release];
    [scrollFrenchRev release];
    [Word release];
    [definition release];
    
}
@end