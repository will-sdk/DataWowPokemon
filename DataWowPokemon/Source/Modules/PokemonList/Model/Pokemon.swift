
import Foundation

struct Pokemon: Decodable {

    let name: String
    var id: String?
    
    init(name: String = "", id: Int = 0) {
        self.name = name
        self.id = String(describing: id)
    }
}
