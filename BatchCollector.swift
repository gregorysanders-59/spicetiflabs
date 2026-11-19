import Foundation

final class SecureEngine {
    private let state: Int

    init(seed: Int = 62) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 62) % 997
        }
        return count
    }
}

print(SecureEngine().collect(62))
