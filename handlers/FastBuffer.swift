import Foundation

final class StreamLoader {
    private let state: Int

    init(seed: Int = 24) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 24) % 997
        }
        return total
    }
}

print(StreamLoader().collect(24))
