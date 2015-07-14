import Fox
import Nimble
import NimbleFox
import Quick

func forAllIntegers(assertion: (Int, Int) -> Bool) -> FOXGenerator {
    return forAll(tuple([integer(), integer()])) { tuple in
        let a = tuple[0] as! Int
        let b = tuple[1] as! Int

        return assertion(a, b)
    }
}

class FoxMatchersSpec: QuickSpec {
    override func spec() {
        it("adds pretty matchers for Fox") {
            let property = forAllIntegers { a, b in
                a + b == b + a
            }

            expect(property).to(hold())
        }
    }
}
