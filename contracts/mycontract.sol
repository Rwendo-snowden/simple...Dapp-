//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract simpleStorage{
  uint256 favnum;
    // creating my own datatype(structure) called People
    struct People{
        string name;
        uint256 accountNumber;
    }

   mapping(string => uint256) public nameToaccountnumber;

    // create an array of people to be stored 
    People [] public people;

    // a function to add the a stored people 
    function addperson(string memory nname,uint256 aaccountnumber) public{

        // push data of each person to the array 
        people.push(People(nname,aaccountnumber));
        nameToaccountnumber[nname]=aaccountnumber;
    }

    function store(uint256 favNum) public virtual{
        favnum=favNum;
    }

    function retrive() public view returns(uint256){
        return favnum;
    }
}



