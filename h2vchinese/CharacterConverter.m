//
//  CharacterConverter.m
//  h2vchinese
//
//  Created by Teddy on 16/5/2017.
//  Copyright © 2017 neogaia. All rights reserved.
//

#import "CharacterConverter.h"

@implementation CharacterConverter

+ (void)replaceHalfSizeSymbols:(NSString **) input {
    // New line character will mess up format
    *input = [*input stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    // Characters
    *input = [*input stringByReplacingOccurrencesOfString:@"a" withString:@"ａ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"b" withString:@"ｂ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"c" withString:@"ｃ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"d" withString:@"ｄ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"e" withString:@"ｅ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"f" withString:@"ｆ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"g" withString:@"ｇ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"h" withString:@"ｈ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"i" withString:@"ｉ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"j" withString:@"ｊ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"k" withString:@"ｋ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"l" withString:@"ｌ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"m" withString:@"ｍ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"n" withString:@"ｎ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"o" withString:@"ｏ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"p" withString:@"ｐ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"q" withString:@"ｑ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"r" withString:@"ｒ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"s" withString:@"ｓ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"t" withString:@"ｔ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"u" withString:@"ｕ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"v" withString:@"ｖ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"w" withString:@"ｗ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"x" withString:@"ｘ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"y" withString:@"ｙ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"z" withString:@"ｚ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"A" withString:@"Ａ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"B" withString:@"Ｂ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"C" withString:@"Ｃ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"D" withString:@"Ｄ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"E" withString:@"Ｅ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"F" withString:@"Ｆ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"G" withString:@"Ｇ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"H" withString:@"Ｈ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"I" withString:@"Ｉ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"J" withString:@"Ｊ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"K" withString:@"Ｋ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"L" withString:@"Ｌ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"M" withString:@"Ｍ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"N" withString:@"Ｎ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"O" withString:@"Ｏ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"P" withString:@"Ｐ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"Q" withString:@"Ｑ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"R" withString:@"Ｒ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"S" withString:@"Ｓ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"T" withString:@"Ｔ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"U" withString:@"Ｕ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"V" withString:@"Ｖ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"W" withString:@"Ｗ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"X" withString:@"Ｘ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"Y" withString:@"Ｙ"];
    *input = [*input stringByReplacingOccurrencesOfString:@"Z" withString:@"Ｚ"];
    
    // Numbers
    *input = [*input stringByReplacingOccurrencesOfString:@"0" withString:@"０"];
    *input = [*input stringByReplacingOccurrencesOfString:@"1" withString:@"１"];
    *input = [*input stringByReplacingOccurrencesOfString:@"2" withString:@"２"];
    *input = [*input stringByReplacingOccurrencesOfString:@"3" withString:@"３"];
    *input = [*input stringByReplacingOccurrencesOfString:@"4" withString:@"４"];
    *input = [*input stringByReplacingOccurrencesOfString:@"5" withString:@"５"];
    *input = [*input stringByReplacingOccurrencesOfString:@"6" withString:@"６"];
    *input = [*input stringByReplacingOccurrencesOfString:@"7" withString:@"７"];
    *input = [*input stringByReplacingOccurrencesOfString:@"8" withString:@"８"];
    *input = [*input stringByReplacingOccurrencesOfString:@"9" withString:@"９"];
    
    // Space
    *input = [*input stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    // Symbols
    *input = [*input stringByReplacingOccurrencesOfString:@"," withString:@"，"];
    *input = [*input stringByReplacingOccurrencesOfString:@"." withString:@"。"];
    *input = [*input stringByReplacingOccurrencesOfString:@"(" withString:@"﹁"];
    *input = [*input stringByReplacingOccurrencesOfString:@")" withString:@"﹂"];
    *input = [*input stringByReplacingOccurrencesOfString:@"[" withString:@"﹁"];
    *input = [*input stringByReplacingOccurrencesOfString:@"]" withString:@"﹂"];
    *input = [*input stringByReplacingOccurrencesOfString:@"<" withString:@"︿"];
    *input = [*input stringByReplacingOccurrencesOfString:@">" withString:@"﹀"];
    *input = [*input stringByReplacingOccurrencesOfString:@"＃" withString:@"#"];
    *input = [*input stringByReplacingOccurrencesOfString:@"!" withString:@"！"];
    *input = [*input stringByReplacingOccurrencesOfString:@"@" withString:@"＠"];
    *input = [*input stringByReplacingOccurrencesOfString:@"$" withString:@"＄"];
    *input = [*input stringByReplacingOccurrencesOfString:@"%" withString:@"％"];
    *input = [*input stringByReplacingOccurrencesOfString:@"^" withString:@"︿"];
    *input = [*input stringByReplacingOccurrencesOfString:@"&" withString:@"＆"];
    *input = [*input stringByReplacingOccurrencesOfString:@"*" withString:@"＊"];
    *input = [*input stringByReplacingOccurrencesOfString:@"-" withString:@"－"];
    *input = [*input stringByReplacingOccurrencesOfString:@"_" withString:@"＿"];
    *input = [*input stringByReplacingOccurrencesOfString:@"+" withString:@"＋"];
    *input = [*input stringByReplacingOccurrencesOfString:@"=" withString:@"＝"];
    *input = [*input stringByReplacingOccurrencesOfString:@"~" withString:@"～"];
    *input = [*input stringByReplacingOccurrencesOfString:@"`" withString:@"、"];
    *input = [*input stringByReplacingOccurrencesOfString:@"/" withString:@"／"];
    *input = [*input stringByReplacingOccurrencesOfString:@"?" withString:@"？"];
    *input = [*input stringByReplacingOccurrencesOfString:@"\\" withString:@"＼"];
    *input = [*input stringByReplacingOccurrencesOfString:@"|" withString:@"｜"];
}

@end
