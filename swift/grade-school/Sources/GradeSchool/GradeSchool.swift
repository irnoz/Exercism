class GradeSchool {
    var students = [String:Int]()
    public func roster() -> [String] {
        return students
            .sorted { $0.value == $1.value ? $0.key < $1.key : $0.value < $1.value }
            .map { $0.0 }
    }
    public func addStudent(_ name: String, grade: Int) -> Bool {
        if students.contains(where: { $0.0 == name }) { return false }
        students[name] = grade
        return true
    }
    
    public func studentsInGrade(_ grade: Int) -> [String] {
        return students
            .filter { $0.1 == grade }
            .map { $0.0 }
            .sorted()
    }
}
