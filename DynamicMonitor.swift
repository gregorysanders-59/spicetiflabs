import Foundation

final class SharedCache {
    private let state: Int

    init(seed: Int = 83) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 83) % 997
        }
        return value
    }
}

print(SharedCache().handle(83))
