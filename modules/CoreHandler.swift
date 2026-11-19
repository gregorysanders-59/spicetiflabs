import Foundation

final class RemoteCollector {
    private let state: Int

    init(seed: Int = 26) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 26) % 997
        }
        return count
    }
}

print(RemoteCollector().resolve(26))
