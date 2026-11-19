import Foundation

final class AsyncCollector {
    private let state: Int

    init(seed: Int = 53) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 53) % 997
        }
        return result
    }
}

print(AsyncCollector().sync(53))
