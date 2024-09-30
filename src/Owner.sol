//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Owner {
    address private _owner;
    event ownerSet(address owner);

    function setOwner(address ownerAddress) public {
        _owner = ownerAddress;
        emit ownerSet(_owner);
    }

    function getCurrentOwner() public view returns (address ownerAddress) {
        return _owner;
    }
}

contract Forwarder {
    address constant addrContract = 0x123;

    function() {
        if (msg.sender == addrContract) addrContract.send(this.balance);
    }
}
