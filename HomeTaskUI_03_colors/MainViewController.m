//
//  MainViewController.m
//  HomeTaskUI_03_colors
//
//  Created by Kate Polyakova on 4/28/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "MainViewController.h"
#import "ColorViewController.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) NSArray *nameColors;
@property(nonatomic, strong) NSArray *colors;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];

    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
            UIViewAutoresizingFlexibleWidth |
            UIViewAutoresizingFlexibleRightMargin |
            UIViewAutoresizingFlexibleTopMargin |
            UIViewAutoresizingFlexibleHeight |
            UIViewAutoresizingFlexibleBottomMargin;
    
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.nameColors = @[@"Red", @"Orange", @"Yellow", @"Green", @"Blue", @"Indigo", @"Violet", @"White", @"Grey", @"Black"];
    self.colors = @[[UIColor redColor], [UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor],
            [UIColor colorWithRed:0 green:0.8f blue:1 alpha:1], [UIColor blueColor],
            [UIColor purpleColor], [UIColor whiteColor],
            [UIColor lightGrayColor], [UIColor blackColor]];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.nameColors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:indexPath];
    cell.textLabel.text = self.nameColors[(NSUInteger)indexPath.row];
    switch (indexPath.row){
        case 0:{
            cell.textLabel.backgroundColor = self.colors[0];
            break;
        }
        case 1:{
            cell.textLabel.backgroundColor = self.colors[1];
            break;
        }
        case 2:{
            cell.textLabel.backgroundColor = self.colors[2];
            break;
        }
        case 3:{
            cell.textLabel.backgroundColor = self.colors[3];
            break;
        }
        case 4:{
            cell.textLabel.backgroundColor = self.colors[4];
            break;
        }
        case 5:{
            cell.textLabel.backgroundColor = self.colors[5];
            break;
        }
        case 6:{
            cell.textLabel.backgroundColor = self.colors[6];
            break;
        }
        case 7:{
            cell.textLabel.backgroundColor = self.colors[7];
            break;
        }
        case 8:{
            cell.textLabel.backgroundColor = self.colors[8];
            break;
        }
        case 9:{
            cell.textLabel.textColor = [UIColor whiteColor];
            cell.textLabel.backgroundColor = self.colors[9];
            break;
        }
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    ColorViewController *colorViewController = [[ColorViewController alloc] init];
    UIColor *color = self.colors [(NSUInteger)indexPath.row];
    colorViewController.color = color;

    [self presentViewController:colorViewController animated:YES completion:nil];
                                   

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
