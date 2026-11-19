import Foundation

final class LocalLoader {
    private let state: Int

    init(seed: Int = 41) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 41) % 997
        }
        return result
    }
}

print(LocalLoader().render(41))
