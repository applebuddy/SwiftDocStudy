
class Person {
    var name: String
    var sex: String
    var age: Int

    init(name: String, sex: String, age: Int) {
        self.name = name
        self.sex = sex
        self.age = age
    }

    deinit {
        print("deinit person class instance!!")
    }
}

// init call
var mungGu: Person? = Person(name: "mungGu", sex: "man", age: 20)

// deinit call
mungGu = nil
