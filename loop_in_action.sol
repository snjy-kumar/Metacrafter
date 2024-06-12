// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// contract LoopStressTest {
//     uint public result;

//     constructor() {
//         result = 0;
//     }

//     function stressTest() public {
//         for (uint i = 0; i < 1000; i++) {
//             result += i;
//         }
//     }
// }


// pragma solidity ^0.8.0;

contract LoopStressTest {
    uint public result;

    constructor() {
        result = 0;
    }

    function stressTest() public {
        for (uint i = 0; i < 100; i++) {
            result += fibonacci(i);
        }
    }

    function fibonacci(uint n) internal pure returns (uint) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            return fibonacci(n-1) + fibonacci(n-2);
        }
    }
}