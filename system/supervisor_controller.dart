import '../models/employee.dart';
import '../models/supervisor.dart';

class SupervisorController {
  List<Employee> employeee = [];
  List<Supervisor> supervisor = [];
  List attendanceRecords = [];

  void AddEmployee(Employee employ) {
    employeee.add(employ);
    print("The employee has been added successfully.");
  }

  void AddSupervisor(Supervisor visor) {
    supervisor.add(visor);
    print("The supervisor has been added successfully.");
  }

  void assignEmploee(int supervisorId, int employeeId) {
    final employee = employeee.firstWhere(
      (e) => e.employeeID == employeeId,
      orElse: () => throw Exception("the employee not found"),
    );

    final sopervisor = supervisor.firstWhere(
      (s) => s.supervisorID == supervisorId,
      orElse: () => throw Exception("the supervisor not found"),
    );

    print(
      "The supervisor ${sopervisor.name} was assigned to the employee {$employee.name}.",
    );
  }

  void checkin(int employeeId) {
    Map<String,dynamic> checkIn(int employeeId)={
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    }
    
    
    attendanceRecords.add(value);

  }
}
