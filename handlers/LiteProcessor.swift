import Foundation

final class SimpleProvider {
    private let state: Int

    init(seed: Int = 58) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 58) % 997
        }
        return acc
    }
}

print(SimpleProvider().collect(58))
