//
//  RCSConversationViewController.m
//  RCSuppportDemo
//
//  Created by 张一帆 on 2020/6/15.
//  Copyright © 2020 RCSupport. All rights reserved.
//

#import "RCSConversationViewController.h"

@interface RCSConversationViewController ()

@end

@implementation RCSConversationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSendFile];
}

//在点击输入框 ➕ 按钮弹出的功能版中添加“文件”功能
-(void) addSendFile {
    UIImage *imageFile = [RCKitUtility imageNamed:@"actionbar_file_icon" ofBundle:@"RongCloud.bundle"];
    RCPluginBoardView *pluginBoardView = self.chatSessionInputBarControl.pluginBoardView;
    [pluginBoardView insertItemWithImage:imageFile
                                   title:NSLocalizedStringFromTable(@"File", @"RongCloudKit", nil)
                                 atIndex:3
                                     tag:PLUGIN_BOARD_ITEM_FILE_TAG];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
