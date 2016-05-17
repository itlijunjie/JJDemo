//
//  ViewController.m
//  RunLoopDemo
//
//  Created by lijunjie on 16/5/17.
//  Copyright © 2016年 lijunjie. All rights reserved.
//

#import "ViewController.h"
#import "CostomTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *_tableData;
    IBOutlet UITableView *_tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableData = @[
                   @"http://g.hiphotos.baidu.com/image/pic/item/241f95cad1c8a7866f726fe06309c93d71cf5087.jpg",
                   @"http://c.hiphotos.baidu.com/image/pic/item/7af40ad162d9f2d38d7056c8acec8a136327ccb0.jpg",
                   @"http://f.hiphotos.baidu.com/image/pic/item/4e4a20a4462309f735600bfe760e0cf3d6cad6cb.jpg",
                   @"http://d.hiphotos.baidu.com/image/pic/item/cb8065380cd7912344a13298a9345982b3b7809d.jpg",
                   @"http://a.hiphotos.baidu.com/image/pic/item/5366d0160924ab18cfc5504736fae6cd7a890bea.jpg",
                   @"http://b.hiphotos.baidu.com/image/pic/item/b64543a98226cffc47102fb2bb014a90f603eafc.jpg",
                   @"http://b.hiphotos.baidu.com/image/pic/item/a686c9177f3e670900d880193fc79f3df9dc5578.jpg",
                   @"http://c.hiphotos.baidu.com/image/pic/item/1c950a7b02087bf448cabdedf0d3572c11dfcf94.jpg",
                   @"http://h.hiphotos.baidu.com/image/pic/item/902397dda144ad3436d14e8ed2a20cf431ad8549.jpg",
                   @"http://g.hiphotos.baidu.com/image/pic/item/ac345982b2b7d0a2eaf1b993c9ef76094b369a80.jpg",
                   @"http://b.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c6a6e946259f16fdfaaf516780.jpg",
                   @"http://pic32.nipic.com/20130829/12906030_124355855000_2.png",
                   @"http://pic55.nipic.com/file/20141208/19462408_171130083000_2.jpg",
                   @"http://pic36.nipic.com/20131217/6704106_233034463381_2.jpg",
                   @"http://img05.tooopen.com/images/20140604/sy_62331342149.jpg",
                   @"http://pic41.nipic.com/20140509/4746986_145156378323_2.jpg",
                   ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CostomTableViewCell *cell = nil;
    static NSString *identifier = @"CostomTableViewCell";
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[CostomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    NSUInteger row = [indexPath row];
    [cell updateWithURL:_tableData[row]];
    return cell;
}

@end
