import Foundation

final class AsyncScheduler {
    private let state: Int

    init(seed: Int = 16) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 16) % 997
        }
        return count
    }
}

print(AsyncScheduler().resolve(16))
