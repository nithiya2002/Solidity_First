// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public Tname = "tokens";
     string public Tabbrevation = "tok";
     uint public totalsup = 0; 


    // mapping variable here
    mapping (address => uint)public bal;


    // mint function
function mint(address add,uint value)public{
      totalsup += value;
      bal[add] += value;
    

    }

    // burn function
    function burn(address add,uint value)public{
        if(bal[add] >= value){
            totalsup -=value;
            bal[add] -=value;
        }
    }

}
