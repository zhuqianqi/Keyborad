//
//  BIDViewController.m
//  Keyborad
//
//  Created by Apple on 14-2-27.
//  Copyright (c) 2014年 Nantong Xinma Information Technology Co.,Ltd. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//1.将输入框的代理设置为File' Owner或者textField.delegate=self;
//2.开始编辑输入框的时候，软键盘出现，执行此事件
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
//    NSTimeInterval animationDuration=0.30f;
//    CGRect frame=self.view.frame;
//    frame.origin.y-=130;
//    frame.size.height+=130;
//    self.view.frame=frame;
//    [UIView beginAnimations:@"ResizeView" context:nil];
//    [UIView setAnimationDuration:animationDuration];
//    self.view.frame=frame;
//    [UIView commitAnimations];
    CGRect frame=textField.frame;
    int offset=frame.origin.y+32-(self.view.frame.size.height-216.0);//键盘高度216
    NSTimeInterval animationDuration=0.30f;
    [UIView beginAnimations:@"ResizeForKeyboard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    //将视图的Y坐标向上移动offset个单位，以使下面腾出地方用于软键盘的显示
    if (offset>0) {
        self.view.frame=CGRectMake(0.0f, -offset, self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
    }
}
//当用户按下return或者回车，keyboard消失
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
//输入框编辑完成后，将视图恢复到原始状态
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    self.view.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}
@end
