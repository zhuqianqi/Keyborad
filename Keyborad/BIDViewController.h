//
//  BIDViewController.h
//  Keyborad
//
//  Created by Apple on 14-2-27.
//  Copyright (c) 2014年 Nantong Xinma Information Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController<UITextFieldDelegate>
-(void)textFieldDidBeginEditing:(UITextField *)textField;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;
-(void)textFieldDidEndEditing:(UITextField *)textField;
@end
