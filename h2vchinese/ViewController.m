//
//  ViewController.m
//  h2vchinese
//
//  Created by Teddy on 16/5/2017.
//  Copyright © 2017 neogaia. All rights reserved.
//

#import "ViewController.h"
#import "CharacterConverter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convert:(id)sender {
    NSString *inputText = self.inputTextView.text;
    [CharacterConverter replaceHalfSizeSymbols:&inputText];
    int numbersOfCharacter = (int)inputText.length;
    int lineHeight = [self.lineHeightTextField.text intValue];
    
    NSMutableArray *textPerLine = [[NSMutableArray alloc] init];
    
    // Create array of string with number of characters equals to line height
    int i = 0;
    for(; i + lineHeight < numbersOfCharacter; i = i + lineHeight)
    {
        [textPerLine addObject:[inputText substringWithRange:NSMakeRange(i, lineHeight)]];
    }
    
    // Number of characters of last line might not have exactally count,
    // append full size empty space to fill until line height
    if(i < numbersOfCharacter)
    {
        int remainingCharacter = numbersOfCharacter - i;
        NSString *lastLine = [inputText substringWithRange:NSMakeRange(i, remainingCharacter)];
        for(int j = 0; j < lineHeight - remainingCharacter; j++)
        {
            lastLine = [lastLine stringByAppendingString:@"　"];
        }
        [textPerLine addObject:lastLine];
    }
    
    NSString *resultString = @"";
    for(int line = 0; line < lineHeight; line ++)
    {
        // Reverse order of textPerLine since text is arranged from right to left
        for(int column = (int)textPerLine.count - 1; column >= 0; column--)
        {
            NSString *columnString = textPerLine[column];
            resultString = [resultString stringByAppendingString:[columnString substringWithRange:NSMakeRange(line, 1)]];
        }
        resultString = [resultString stringByAppendingString:@"\n"];
    }
    
    self.outputTextView.text = resultString;
}

- (IBAction)copyFromPasteBoard:(id)sender {
    UIPasteboard*  pasteboard  = [UIPasteboard generalPasteboard];
    _inputTextView.text = [pasteboard  string];
}


- (IBAction)copyResult:(id)sender {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = self.outputTextView.text;
}

-(void)dismissKeyboard
{
    [self.lineHeightTextField resignFirstResponder];
    [self.inputTextView resignFirstResponder];
    [self.outputTextView resignFirstResponder];
}

@end
