//Create a base class Employee
class Employee {
  String name;
  int salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name');
    print('Salary: $salary');
  }
}

//Create subclasses or Child class for Manager
//Both subclasses should have a method to display their complete information.
class Manager extends Employee {
  String department;

  Manager(super.name, super.salary, this.department);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Department: $department\n');
  }
}

//Create subclasses or Child class for Developer
class Developer extends Employee {
  String programmingLanguage;

  Developer(super.name, super.salary, this.programmingLanguage);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Programming Language: $programmingLanguage\n');
  }
}

//Main funcation
//Create one Manager and one Developer object, and display their details.
void main() {
  Manager manager = Manager('Awindrela Roy', 30000, 'Programme Coordinator');
  Developer developer = Developer('Md Taufiqur Rahman', 40000, 'Dart');

  manager.displayInfo();
  developer.displayInfo();
}
