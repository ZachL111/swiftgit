@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 72, capacity: 84, latency: 13, risk: 11, weight: 10)
        precondition(Policy.score(signalcase_1) == 175)
        precondition(Policy.classify(signalcase_1) == "accept")
        let signalcase_2 = Signal(demand: 78, capacity: 107, latency: 27, risk: 19, weight: 7)
        precondition(Policy.score(signalcase_2) == 111)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 85, capacity: 98, latency: 16, risk: 5, weight: 11)
        precondition(Policy.score(signalcase_3) == 256)
        precondition(Policy.classify(signalcase_3) == "accept")
    }
}
