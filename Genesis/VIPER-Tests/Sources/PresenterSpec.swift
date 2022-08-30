import Foundation
import Quick
import Nimble
@testable import {{ host_target_name }}

final class {{ module_name }}PresenterSpec: QuickSpec {

    override func spec() {

        var sut: {{ module_name }}Presenter!

        var moduleOutputMock: {{ module_name }}ModuleOutputMock!
        var interactorMock: {{ module_name }}InteractorInputMock!
        var routerMock: {{ module_name }}RouterInputMock!
        var viewMock: {{ module_name }}ViewInputMock!

        beforeEach {
            moduleOutputMock = {{ module_name }}ModuleOutputMock()
            interactorMock = {{ module_name }}InteractorInputMock()
            routerMock = {{ module_name }}RouterInputMock()
            viewMock = {{ module_name }}ViewInputMock()

            sut = {{ module_name }}Presenter()

            sut.moduleOutput = moduleOutputMock
            sut.interactor = interactorMock
            sut.router = routerMock
            sut.view = viewMock
        }

        describe("ViewOutput") {
            describe("viewDidLoad(_:)") {
                it("should call configureViews() of view") {
                    sut.viewDidLoad(viewMock)
                    expect(viewMock.configureViewsCalled).to(beTrue())
                }
            }
        }

        describe("InteractorOutput") {
        }

        describe("RouterOutput") {
        }

        describe("ModuleInput") {
        }
    }
}
