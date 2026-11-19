import Foundation

final class CoreHandler {
    private let state: Int

    init(seed: Int = 69) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 69) % 997
        }
        return acc
    }
}

print(CoreHandler().build(69))
