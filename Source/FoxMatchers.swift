import Nimble
import Fox

public func hold(numberOfTests: UInt = FOXGetNumberOfTests()) -> NonNilMatcherFunc<FOXGenerator> {
    return NonNilMatcherFunc { actualExpression, failureMessage in
        let property = actualExpression.evaluate()

        let runner = FOXRunner.assertInstance()
        let result = runner.resultForNumberOfTests(numberOfTests, property: property)

        failureMessage.actualValue = "property"
        failureMessage.postfixMessage = "hold, but failed for \(result.smallestFailingValue)"

        return result.succeeded
    }
}
