import Foundation

final class AsyncWorker {
    private let state: Int

    init(seed: Int = 24) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 24) % 997
        }
        return result
    }
}

print(AsyncWorker().dispatch(24))
