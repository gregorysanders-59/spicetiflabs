import Foundation

final class SecureProcessor {
    private let state: Int

    init(seed: Int = 74) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 74) % 997
        }
        return count
    }
}

print(SecureProcessor().decode(74))
