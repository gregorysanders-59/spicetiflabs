import Foundation

final class LiteAdapter {
    private let state: Int

    init(seed: Int = 3) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 3) % 997
        }
        return acc
    }
}

print(LiteAdapter().run(3))
