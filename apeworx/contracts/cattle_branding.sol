// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.12;

contract CattleBranding {


    struct Brand { // Branding struct that will track user information and branding information
        uint registrationID; // this could also be the brand number automatically generated 
        bytes32 registrationImage; // this needs to be a hashed value 
        uint areaCode;
        string email; 
        string brandOwnerFname;
        string brandOwnerLname;
        string streetAddress;
        string city;
        string state;
    }
    
}