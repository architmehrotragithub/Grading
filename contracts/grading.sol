pragma solidity ^0.5.0;

/**
 * The grading contract does this and that...
 */
contract Grading {
	//Model a student
	struct Student {
		uint id;
		string name;
		string grade;
		string pk;
	}

	string profpk = "56cdda579e49c783159dc8789ef1b250933e75508571d14ff05e11ff34df33d5";

	//Read student
	mapping(uint => Student) public students;

	constructor () public {
		addStudent("Student1", "3e2e63fca91cf14b0d16bc52cd74a1890e8407321c8d3081858d4124c1ebf0fd");
		addStudent("Student2", "52462a70edc4e71e54b34f841460f94feef107e54f2c835a88303bf11c41283b");
		addStudent("Student3", "3a7529593d96130d4ef61b6f339679ab31e7455cf8da3d67d4d117edcd8f1c0a");
		addStudent("Student4", "5c1b2f3afc9cae4e00896bbdf511fd26f33af16d267779b8d975723aa0c67ce7");
		addStudent("Student5", "8e60b4954c65ef38d564e112c1bd3225c7c5af8a211a3efc0a5e6667d230fdb1");
	}
	
		//Store Student Count
	uint public studentCount;

	function addStudent (string memory _name, string memory _pk) public {
		studentCount ++;
		students[studentCount] = Student(studentCount, _name, "Not Assigned", _pk);
	}	
		
}
	


	

