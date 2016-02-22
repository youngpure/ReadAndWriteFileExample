//
//  ViewController.m
//  WriteAndReadFileExample
//
//  Created by YNL on 16/2/22.
//  Copyright © 2016年 com.yangninglong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //1 获取文件路径
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSAllDomainsMask,YES);
    //
    if (pathArray.count > 0) {
        
        //1.1 组织文件路径
        NSString *filePath = [NSString stringWithFormat:@"%@/%s",pathArray[0],"data.txt"];
        NSURL *fileUrl = [NSURL fileURLWithPath:filePath];
        NSLog(@"%@",fileUrl);
        
        //1.2 写入文件
//        NSMutableData *dataWrite = [[NSMutableData alloc]init];
//        [dataWrite appendData:[@"Hello Sandbox" dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES]];
//        [dataWrite writeToFile:fileUrl.path atomically:YES];
//        NSLog(@"end");
        
        //读取文件
        NSData *dataRead = [NSData dataWithContentsOfFile:fileUrl.path];
        NSString *strRead = [[NSString alloc]initWithData:dataRead encoding:NSUTF8StringEncoding];
        NSLog(@"%@",strRead);
        
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
