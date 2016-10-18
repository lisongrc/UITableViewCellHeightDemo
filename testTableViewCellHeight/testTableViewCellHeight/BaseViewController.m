//
//  BaseViewController.m
//  testTableViewCellHeight
//
//  Created by FQL on 16/10/17.
//  Copyright © 2016年 EddieFan. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@property (nonatomic, strong) NSMutableDictionary *heightDic;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark UItableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSNumber *height = [self.heightDic objectForKey:indexPath];
    if(height)
    {
        return height.floatValue;
    }
    else
    {
        return 100;
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSNumber *height = @(cell.frame.size.height);
    [self.heightDic setObject:height forKey:indexPath];
}


#pragma mark setting and getting
-(NSMutableDictionary *)heightDic{
    if (!_heightDic) {
        _heightDic = [NSMutableDictionary new];
    }
    return _heightDic;
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
