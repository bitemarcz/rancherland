// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.12;

contract CattleBrandingFactory {


    struct CattleBrand { // Branding struct that will track user information and branding information
        uint registrationID; // this could also be the brand number automatically generated
        bytes32 registrationImage; // not sure which data type this needs to be based on the cattle brands 
        uint areaCode;
        string email; 
        string brandOwnerFname;
        string brandOwnerLname;
        string streetAddress;
        string city;
        string state;
    }

    CattleBrand[] public brandings; // this is going to be an array of cattle brands 

    // will need to insert some type of mapping data structure.. possibly? 

    function _createCattleBrand() private {

    }

    function _generageImageHash(bytes32 _registrationImage) private pure returns (uint) {
        uint randImageId = uint(keccak256(abi.encodePacked(_registrationImage)));
        return randImageId;
    }

    function _verifyCattleBrand() private {

    }

    function _importCattleBrand() private {

    }
    
}