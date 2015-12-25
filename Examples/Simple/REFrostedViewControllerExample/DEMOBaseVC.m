//
//  DEMOBaseVC.m
//  REFrostedViewControllerExample
//
//  Created by 张靖乾 on 15/12/24.
//  Copyright © 2015年 Roman Efimov. All rights reserved.
//

#import "DEMOBaseVC.h"
#import "DEMONavigationController.h"
@interface DEMOBaseVC ()

@end

@implementation DEMOBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:13/255.0 green:76/255.0 blue:146/255.0 alpha:1.0]];
//    self.title = @"Home Controller";
    UIImage *image = [UIImage imageNamed:@"icon-contactmenu-tasklist~iphone"];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image  style:UIBarButtonItemStylePlain
                                                                            target:(DEMONavigationController *)self.navigationController
                                                                            action:@selector(showMenu)];
    
    UIImage *addImage = [UIImage imageNamed:@"icon_add_task~iphone"];
    UIImage *searchImage = [UIImage imageNamed:@"icon-sendto-search~iphone"];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithImage:addImage style:UIBarButtonItemStylePlain target:nil  action:nil];
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc] initWithImage:searchImage style:UIBarButtonItemStylePlain target:nil action:nil];
    searchItem.width = -12;
    self.navigationItem.rightBarButtonItems = @[addItem,searchItem];
    //    self.navigationItem.rightBarButtonItems
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"Balloon"];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
