// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;
import "./mycontract.sol";

contract storagefactory{
// simpleStorage acts like a new data type 
simpleStorage [] public simplestoragearray;

function createAcontract() public{
    simpleStorage simplestorage= new simpleStorage();
    simplestoragearray.push(simplestorage);
}

function sfstore(uint256 index,uint256 mynumber) public{

    simpleStorage simplestorage =simplestoragearray[index];
    simplestorage.store(mynumber);
}

function sfget(uint256 index) public view returns(uint256){
     simpleStorage simplestorage = simplestoragearray[index];
     return simplestorage.retrive();

}

}

