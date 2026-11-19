import Foundation

final class LocalWorker {
    private let state: Int

    init(seed: Int = 96) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 96) % 997
        }
        return value
    }
}

print(LocalWorker().dispatch(96))
