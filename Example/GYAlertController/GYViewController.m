//
//  GYViewController.m
//  GYAlertController
//
//  Created by Gyang on 07/21/2018.
//  Copyright (c) 2018 Gyang. All rights reserved.
//

#import "GYViewController.h"
#import "GYTestCase.h"
#import <objc/message.h>
#import "GYDetailViewController.h"

#import <GYAlertController/GYAlertController.h>


@interface GYViewController ()
@property (nonatomic, readwrite, strong) NSMutableArray<GYTestCase *> *dataSource;
@end

@implementation GYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self buildDataSource];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - cases

- (void)case0 {
    GYAlertController *controller = [GYAlertController alertControllerWithTitle:nil message:nil preferredStyle:GYAlertControllerStyleActionSheet];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)case1 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:kDefaultTitleAttributedString(@"标题")
                                     message:nil
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)case2 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:nil
                                     message:kDefaultMessageAttributedString(@"一粒尘可填海，一根草斩尽日月星辰，弹指间天翻地覆。群雄并起，万族林立，诸圣争霸，乱天动地；问苍茫大地，谁主沉浮？一个少年从大荒中走出，一切从这里开始。")
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    [self presentViewController:controller animated:YES completion:nil];
}
- (void)case3 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:nil
                                     message:nil
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    GYAlertAction *ok = [GYAlertAction defaultStyleActionWithTitle:kDefaultAlertAttributedString(@"ok") handler:^{
        
    }];
    [controller addAction:ok];
    
    GYAlertAction *cancel = [[GYAlertAction alloc] initWithTitle:nil
                                                   configuration:^(GYAlertControllerActionCell *actionCell)
    {
        NSAttributedString *text = [[NSAttributedString alloc] initWithString:@"cancel" attributes:@{NSForegroundColorAttributeName: UIColor.redColor}];
        actionCell.textLabel.attributedText = text;
        actionCell.textLabel.textAlignment = NSTextAlignmentCenter;
    } handler:^{
    }];
    cancel.topMargin = 5.0;
    [controller addAction:cancel];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)case4 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:kDefaultTitleAttributedString(@"标题")
                                     message:kDefaultMessageAttributedString(@"一粒尘可填海，一根草斩尽日月星辰，弹指间天翻地覆。群雄并起，万族林立，诸圣争霸，乱天动地；问苍茫大地，谁主沉浮？一个少年从大荒中走出，一切从这里开始。")
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)case5 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:kDefaultTitleAttributedString(@"标题")
                                     message:nil
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    GYAlertAction *ok = [GYAlertAction defaultStyleActionWithTitle:kDefaultAlertAttributedString(@"ok") handler:^{
        
    }];
    [controller addAction:ok];
    
    GYAlertAction *cancel = [[GYAlertAction alloc] initWithTitle:nil
                                                   configuration:^(GYAlertControllerActionCell *actionCell)
                             {
                                 NSAttributedString *text = [[NSAttributedString alloc] initWithString:@"cancel" attributes:@{NSForegroundColorAttributeName: UIColor.redColor}];
                                 actionCell.textLabel.attributedText = text;
                                 actionCell.textLabel.textAlignment = NSTextAlignmentCenter;
                             } handler:^{
                             }];
    cancel.topMargin = 5.0;
    [controller addAction:cancel];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)case6 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:nil
                                     message:kDefaultMessageAttributedString(@"一粒尘可填海，一根草斩尽日月星辰，弹指间天翻地覆。群雄并起，万族林立，诸圣争霸，乱天动地；问苍茫大地，谁主沉浮？一个少年从大荒中走出，一切从这里开始。")
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    GYAlertAction *ok = [GYAlertAction defaultStyleActionWithTitle:kDefaultAlertAttributedString(@"ok") handler:^{
        
    }];
    [controller addAction:ok];
    
    GYAlertAction *cancel = [[GYAlertAction alloc] initWithTitle:nil
                                                   configuration:^(GYAlertControllerActionCell *actionCell)
                             {
                                 NSAttributedString *text = [[NSAttributedString alloc] initWithString:@"cancel" attributes:@{NSForegroundColorAttributeName: UIColor.redColor}];
                                 actionCell.textLabel.attributedText = text;
                                 actionCell.textLabel.textAlignment = NSTextAlignmentCenter;
                             } handler:^{
                             }];
    cancel.topMargin = 5.0;
    [controller addAction:cancel];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)case7 {
    GYAlertController *controller = [GYAlertController
                                     alertControllerWithTitle:kDefaultTitleAttributedString(@"The Return of The O'Mahony")
                                     message:kDefaultMessageAttributedString(@"ZEKE TISDALE was the father of Company F. Not that this title had ever been formally conferred upon him, or even recognized in terms, but everybody understood about it.")
                                     preferredStyle:GYAlertControllerStyleActionSheet];
    
    GYAlertAction *ok = [GYAlertAction defaultStyleActionWithTitle:kDefaultAlertAttributedString(@"动画结束后执行action") handler:^{
        GYDetailViewController *controller = [[GYDetailViewController alloc] init];
        controller.title = @"GYDetailViewController";
        [self.navigationController pushViewController:controller animated:YES];
    }];
    ok.invokeHandlerAfterDismiss = YES; // 看这里
    [controller addAction:ok];
    
    GYAlertAction *cancel = [[GYAlertAction alloc] initWithTitle:nil
                                                   configuration:^(GYAlertControllerActionCell *actionCell)
                             {
                                 NSAttributedString *text = [[NSAttributedString alloc] initWithString:@"cancel" attributes:@{NSForegroundColorAttributeName: UIColor.redColor}];
                                 actionCell.titleLabel.attributedText = text;
                                 actionCell.leftIconImgView.image = [UIImage imageNamed:@"zhifeiji"];
                             } handler:^{
                             }];
    cancel.topMargin = 5.0;
    [controller addAction:cancel];
    controller.dismissOnBackgroundTapped = NO;
    [self presentViewController:controller animated:YES completion:nil];
}

#pragma mark - UITableViewDataSource, UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CaseCell" forIndexPath:indexPath];
    GYTestCase *acase = _dataSource[indexPath.row];
    
    cell.textLabel.text = acase.title;
    cell.detailTextLabel.text = acase.message;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    GYTestCase *aCase = self.dataSource[indexPath.row];
    SEL sel = NSSelectorFromString([NSString stringWithFormat:@"case%ld", indexPath.row]);
    if ([self respondsToSelector:sel]) {
        ((void(*)(id, SEL))objc_msgSend)(self, sel);
    }
    
}

- (void)buildDataSource {
    _dataSource = [NSMutableArray array];
    NSArray<NSString *> *cases = @[
                                   @"什么都没有😆",
                                   @"只有标题",
                                   @"只有消息",
                                   @"只有actions",
                                   @"标题和消息",
                                   @"标题和actions",
                                   @"消息和actions",
                                   @"更灵活的了解下"
                                   ];
    [cases enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        GYTestCase *acase = [[GYTestCase alloc] initWithTitle:obj
                                                      message:[NSString stringWithFormat:@"请参考case%ld实现", idx]
                                                      actions:nil];
        [_dataSource addObject:acase];
    }];
    
}

@end
