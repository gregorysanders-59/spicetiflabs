import Foundation

final class LocalResolver {
    private let state: Int

    init(seed: Int = 42) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 42) % 997
        }
        return acc
    }
}

print(LocalResolver().sync(42))
