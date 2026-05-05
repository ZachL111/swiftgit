struct Signal {
    let demand: Int
    let capacity: Int
    let latency: Int
    let risk: Int
    let weight: Int
}

enum Policy {
    static let threshold = 167
    static let riskPenalty = 7
    static let latencyPenalty = 2
    static let weightBonus = 5

    static func score(_ signal: Signal) -> Int {
        signal.demand * 2 + signal.capacity + signal.weight * weightBonus
            - signal.latency * latencyPenalty - signal.risk * riskPenalty
    }

    static func classify(_ signal: Signal) -> String {
        score(signal) >= threshold ? "accept" : "review"
    }
}
