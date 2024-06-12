MyEtherToken Contract
================

**Author**
------

[Sanjay Kumar Thakur](https://github.com/snjy-kumar)



**Contract Description**
---------------------

This is a simple ERC-20 token contract written in Solidity. It allows for the creation, minting, and burning of tokens.

**Contract Variables**
--------------------

### Public Variables

* `tokenName`: The name of the token (string)
* `tokenAbbrv`: The abbreviation of the token (string)
* `totalSupply`: The total supply of tokens (uint)

### Mapping Variable

* `balances`: A mapping of addresses to their corresponding token balances (address => uint)

**Functions**
---------

## mint

* Parameters: `_address` (address), `_value` (uint)
* Description: Mints `_value` tokens and assigns them to `_address`. Increases the total supply by `_value`.


#### Code
```solidity
    Copy code

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }
```
## burn

* Parameters: `_address` (address), `_value` (uint)
* Description: Burns `_value` tokens from `_address`. Decreases the total supply by `_value`. Only allows burning if the balance of `_address` is greater than or equal to `_value`.

#### Code
```solidity
    Copy code
    
    function burn(address _address, uint _value) public {
        if(balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
```

**Deployment**
----------

This contract can be deployed to the Ethereum blockchain using a compatible wallet or deployment tool.

**Requirements**
-------

* The contract stores the token details (name, abbreviation, total supply) as public variables.
* The contract maintains a mapping of addresses to balances.
* The mint function increases the total supply and the balance of a specified address.
* The burn function decreases the total supply and the balance of a specified address, with a check to ensure the balance is sufficient