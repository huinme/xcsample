import UIKit

class ChapterViewController: UIViewController {

    @objc var chapter: Chapter!

    @IBOutlet fileprivate weak var titleLabel: UILabel!
    @IBOutlet fileprivate weak var authorNameLabel: UILabel!
    @IBOutlet fileprivate weak var authorProfileImageView: UIImageView!
    @IBOutlet fileprivate weak var leadTextView: UITextView!

    @objc static func instantiateFromStoryboard() -> ChapterViewController! {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: self))
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! ChapterViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        updateViews()
    }
}

extension ChapterViewController {

    func setupViews() {
        authorProfileImageView.layer.cornerRadius = authorProfileImageView.bounds.width / 2.0
        authorProfileImageView.layer.borderWidth = 1.0
        authorProfileImageView.layer.borderColor = UIColor.lightGray.cgColor
    }

    func updateViews() {
        if let chapter = chapter {
            let format = NSLocalizedString("chapter-number-and-title", comment: "第%ld章 %@")
            titleLabel.text = String(format: format, chapter.number, chapter.title) 
            authorNameLabel.text = chapter.author.name
            leadTextView.text = chapter.lead
            authorProfileImageView.image = UIImage(named: chapter.author.profileImageName)
        }
    }
}
