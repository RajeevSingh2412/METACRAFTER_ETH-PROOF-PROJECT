// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract VedaToken {

    // public variables here
    string public token_name="VEDA";
    string public token_abbr="VED";
    uint public total_supply=0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address,uint _value) public{
        total_supply+=_value;
        balances[_address]=balances[_address]+_value;
    }

    // burn function
    function burn(address _address,uint _value) public{
        if(balances[_address]>=_value){
            total_supply-=_value;
            balances[_address]-=_value;
        }
    }

}
