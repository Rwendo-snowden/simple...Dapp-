  // SPDX-License-Identifier: MIT
 
 pragma solidity^0.8.0;
  import"./mycontract.sol";

  contract ExtraStorage is simpleStorage{

    function store(uint256 mynumber) public override{
        favnum=mynumber+5;

    }


  }