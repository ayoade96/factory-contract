// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "./childContract.sol";

contract StudentDetailsFactory {
     
     studentDetails[] Details;

     function createStudentDetails() external returns(studentDetails newDetails) {
         newDetails = new studentDetails();
         Details.push(newDetails);

     } 
     
}