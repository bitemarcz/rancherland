pragma solidity ^0.8.12;

contract ZombieFactory {

    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16; // state variables stored on the blockchain also public
    uint dnaModulus = 10 ** dnaDigits; // some state variables public

    struct Zombie { // complex data structure 
        string name;
        uint dna;
    }

    Zombie[] public zombies; // array of zombies might need to use array to hold a lot same data

    mapping (uint => address) public zombieToOwner; // mapping between owner and address
    mapping (address => uint) ownerZombieCount; // mapping of address owner to number of x

    function _createZombie(string memory _name, uint _dna) private { 
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        zombieToOwner[id] = msg.sender;
        ownerZombieCount[msg.sender]++;
        emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        require(ownerZombieCount[msg.sender] == 0);
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
    // Standard functions for creating zombies 

}

contract ZombieFeeding is ZombieFactory { // example of inheritane
    
}