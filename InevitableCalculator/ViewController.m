//
//  ViewController.m
//  InevitableCalculator
//
//  Created by Demond Childers on 4/12/16.
//  Copyright © 2016 Demond Childers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel     *calcLabel;

@end

@implementation ViewController

#pragma mark - Global Variables

float leftSideFloat = 0;
float rightSideFloat = 0;
bool operatorPressed = false;
NSString *operatorType = @"none";

#pragma mark - Operator Methods


- (IBAction)oneButtonPressed:(id)button  {
    NSLog(@"One Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@1",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
    
}
    - (IBAction)twoButtonPressed:(id)button  {
        NSLog(@"Two Pressed");
        _calcLabel.text= [NSString stringWithFormat:@"%@2",_calcLabel.text];
        if (operatorPressed) {
            rightSideFloat = [_calcLabel.text floatValue];
        } else {
            leftSideFloat = [_calcLabel.text floatValue];
    }
        
}
        - (IBAction)threeButtonPressed:(id)button  {
            NSLog(@"Three Pressed");
            _calcLabel.text= [NSString stringWithFormat:@"%@3",_calcLabel.text];
            if (operatorPressed) {
                rightSideFloat = [_calcLabel.text floatValue];
            } else {
                leftSideFloat = [_calcLabel.text floatValue];
            }
}

- (IBAction)fourButtonPressed:(id)button  {
    NSLog(@"Four Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@4",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)fiveButtonPressed:(id)button  {
    NSLog(@"Five Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@5",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)sixButtonPressed:(id)button  {
    NSLog(@"Six Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@6",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)sevenButtonPressed:(id)button  {
    NSLog(@"Seven Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@7",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)eightButtonPressed:(id)button  {
    NSLog(@"Eight Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@8",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)nineButtonPressed:(id)button  {
    NSLog(@"Nine Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@9",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)zeroButtonPressed:(id)button  {
    NSLog(@"Zero Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@0",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)decimalButtonPressed:(id)button  {
    NSLog(@"Decimal Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@.",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)percentButtonPressed:(id)button  {
    NSLog(@"Percent Pressed");
    _calcLabel.text= [NSString stringWithFormat:@"%@％",_calcLabel.text];
    if (operatorPressed) {
        rightSideFloat = [_calcLabel.text floatValue];
    } else {
        leftSideFloat = [_calcLabel.text floatValue];
    }
}

- (IBAction)plusButtonPressed:(id)button  {
    NSLog(@"Plus Pressed");
    operatorType = @"+";
    operatorPressed = true;
    _calcLabel.text = @" ";
}

- (IBAction)minusButtonPressed:(id)button  {
    NSLog(@"Minus Pressed");
    operatorType = @"-";
    operatorPressed = true;
    _calcLabel.text = @" ";

}


- (IBAction)multiplyButtonPressed:(id)button  {
    NSLog(@"Multiply Pressed");
    operatorType = @"x";
    operatorPressed = true;
    _calcLabel.text = @" ";
    
}

- (IBAction)divideButtonPressed:(id)button  {
    NSLog(@"Divide Pressed");
    operatorType = @"⌹";
    operatorPressed = true;
    _calcLabel.text = @" ";
}


- (IBAction)equalButtonPressed:(id)button  {
    NSLog(@"Equal Pressed with type %@", operatorType);
    float result = 0;
    if ([operatorType isEqualToString:@"+"]) {
        result = leftSideFloat + rightSideFloat;
    } else if ([operatorType isEqualToString:@"-"]) {
        result = leftSideFloat - rightSideFloat;
    } else if ([operatorType isEqualToString:@"x"]) {
        result = leftSideFloat * rightSideFloat;
    } else if ([operatorType isEqualToString:@"⌹"]) {
        result = leftSideFloat / rightSideFloat;
    }
    _calcLabel.text= [NSString stringWithFormat:@"%f",result];
    
}

- (IBAction)clearButtonPressed:(id)button  {
    NSLog(@"Clear Pressed");
    _calcLabel.text= [NSString stringWithFormat:@" "];
    operatorPressed = false;
    leftSideFloat = 0;
    rightSideFloat = 0;
    operatorType = @"none";
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}



@end
