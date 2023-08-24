// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract studentDetails {
    address principal;

    constructor () {
        principal = msg.sender;
    } 

    struct Student {
        string name;
        uint age;
        string gender;
    }

    event Admitted(string indexed _name, uint _id, uint _age, string  _gender);

    uint id;

    modifier onlyPrincipal() {
        require(msg.sender == principal);
        _;
    }

    mapping(uint => Student) _students;

    function admitStudent (string memory _name, uint _age, string memory _gender) external onlyPrincipal{
        id = id + 1;
   Student storage Details = _students[id];
    Details.name = _name;
    Details.age = _age;
    Details.gender = _gender;
    emit Admitted(_name, id, _age, _gender);
}

   function deleteStudent(uint _id) external {
       delete _students[_id];
   }

   function getStudentDetails (uint _id) external view returns(Student memory _s) {
     _s = _students[_id];
   
   }


    
   }


