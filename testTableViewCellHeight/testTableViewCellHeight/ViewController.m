//
//  ViewController.m
//  testTableViewCellHeight
//
//  Created by FQL on 16/10/17.
//  Copyright © 2016年 EddieFan. All rights reserved.
//

#import "ViewController.h"
#import "dataModel.h"
#import "CustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"testTableViewHeight";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"reload" style:UIBarButtonItemStylePlain target:self action:@selector(reloadView)];
    [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"CELL"];
    [self.view addSubview:self.tableView];
}

#pragma mark UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
            cell.titleLabel.text = @"发克鲁斯；的叫法；都市客积分打开房间；卡死的积分；大健康的说服力的设计费速度快解放的设计开发快速减肥的顺口溜见风使舵开了房";
            break;
        case 1:
            cell.titleLabel.text = @"发克鲁斯；的叫法；都肥的顺口溜见风使舵开了房";
            break;
        case 2:
            cell.titleLabel.text = @"发克鲁斯；的叫法；都市的分公司的风格是大法官的发生过的发生过的发生过的发生过的双方各都发生过的风格客积分打开房间；卡死的积分；大开杀戒疯狂的设计费健康的说服力的设计费速度快解放的设计开发快速减肥的顺口溜见风使舵开了房";
            break;
        case 3:
            cell.titleLabel.text = @"发克鲁斯；的叫法；都市客积分打开房间；卡死的积都发生过是大法官的发生过的发生过的发生过的发生过的发生过的风格的风格是大法官都发生过的发生过的发生过的发生过的发生过大使馆的发生过的发生过的发生过 分；大开杀戒疯狂的设计费健康的说服力的设计费速度快解放的设计开发快速减肥的顺口溜见风使舵开了房";
            break;
        case 4:
            cell.titleLabel.text = @"发克鲁斯；的叫法；都市客积分打开房间；卡死的都发生过的发生过的方式给对方广东佛山个积分；大开杀戒疯狂的设计费健康的说服力的设计费速度快解放的设计开发快速减肥的顺口溜见风使舵开了房";
            break;
            
        default:
            break;
    }
    cell.headImage.image = [UIImage imageNamed:@"test"];
    return cell;
}


#pragma mark tableView
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

-(NSMutableArray *)dataArr
{
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
        NSString *string = @"Siri 让你能够利用语音来完成发送信息、安排会议、查看最新比分等更多事务。只要说出你想做的事，Siri 就能帮你办到。Siri 可以听懂你说的话、知晓你的心意，甚至还能有所回应。iOS 7 中的 Siri 拥有新外观、新声音和新功能。它的界面经过重新设计，以淡入视图浮现于任意屏幕画面的最上层。Siri 回答问题的速度更快，还能查询更多信息源，如维基百科。它可以承担更多任务，如回电话、播放语音邮件、调节屏幕亮度，以及更多。";
        
        //生成假数据
        for (int i = 0; i < 5; i++)
        {
            dataModel *model = [[dataModel alloc] init];
            NSInteger index = (arc4random()%(string.length / 20)) * 20;
            model.desc = [string substringToIndex:MAX(20, index)];
            
            [_dataArr addObject:model];
        }
    }
    return _dataArr;
}

-(void)reloadView{
    [self.tableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
