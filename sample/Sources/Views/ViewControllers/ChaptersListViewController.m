#import "ChaptersListViewController.h"
#import "sample-Swift.h"

@interface ChaptersListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, readwrite, strong) NSArray<Chapter *> *chapters;
@property (nonatomic, readwrite, weak) IBOutlet UITableView *tableView;

@end

@implementation ChaptersListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.chapters = DataStore.fetchChapters;
}

#pragma mark - UITableViewDataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView
                 cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Chapter *chapter = self.chapters[indexPath.row];
    NSString *format = NSLocalizedString(@"chapter-number-and-title", @"第%ld章 %@");
    cell.textLabel.text = [NSString stringWithFormat:format, (long)chapter.number, chapter.title];
    cell.detailTextLabel.text = self.chapters[indexPath.row].author.name;

    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.chapters.count;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    ChapterViewController *viewController = [ChapterViewController instantiateFromStoryboard];
    viewController.chapter = self.chapters[indexPath.row];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
