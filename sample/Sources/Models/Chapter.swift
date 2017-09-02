import Foundation

class Chapter: NSObject {
    @objc let number: Int
    @objc let title: String
    @objc let lead: String
    @objc let author: Author

    @objc init(number: Int, title: String, lead: String, author: Author) {
        self.number = number
        self.title = title
        self.lead = lead
        self.author = author
        super.init()
    }
}
