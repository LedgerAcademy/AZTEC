pragma solidity >=0.5.0 <0.6.0;

import "../../../../ACE/validators/joinSplit/JoinSplitABIEncoder.sol";
import "../../../../libs/LibEIP712.sol";

/**
 * @title JoinSplitABIEncoderTest
 * @author AZTEC
 * @dev JoinSplit ABI Encoder Test
 * Don't include this as an internal library. This contract uses a static memory table to cache
 * elliptic curve primitives and hashes.
 * Calling this internally from another function will lead to memory mutation and undefined behaviour.
 * The intended use case is to call this externally via `staticcall`.
 * External calls to OptimizedAZTEC can be treated as pure functions as this contract contains no
 * storage and makes no external calls (other than to precompiles)
 * Copyright Spilsbury Holdings Ltd 2019. All rights reserved.
 **/
contract JoinSplitABIEncoderTest {
    function validateJoinSplit(
        bytes calldata,
        address,
        uint[6] calldata
    )
        external pure
        returns (bytes memory)
    {
        JoinSplitABIEncoder.encodeAndExit();
    }
}
