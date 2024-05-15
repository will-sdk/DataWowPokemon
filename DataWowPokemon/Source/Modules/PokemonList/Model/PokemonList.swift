
import Foundation

struct PokemonList: Decodable {

    let results: [Pokemon]?
    
    init(results: [Pokemon]? = []) {
        self.results = results
    }
}
