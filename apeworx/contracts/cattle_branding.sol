// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.12;

contract CattleBrandingFactory {

    event NewCattleBrand(uint cattleBrandId, uint registrationImage, string brandDetails, string county, string ownerDetails);

    uint randImageId;
    uint Pnumber;
    uint areaCode;
    string brandOwnerFname;
    string brandOwnerLname;
    string streetAddress;
    string city;
    string state;
    string email;


    struct CattleBrand { // Branding struct that will track required branding information, received from search field
        uint registrationImage; // not sure which data type this needs to be based on the cattle brands maybe a string
        string brandDetails;
        string county;
        string ownerDetails;
        
    }
    

    CattleBrand[] public brandings; // this is going to be an array of cattle brands 

    mapping (uint => address) public cattleBrandToOwner;
    mapping (address => uint) ownerCattleBrandCount;

    function _createCattleBrandId(uint _registrationImage, string memory _brandDetails, string memory _county, string memory _ownerDetails) private {
        brandings.push(CattleBrand(_registrationImage, _brandDetails, _county, _ownerDetails)); // somehow need to perform a conversion from tuple to unint
        uint brandId = brandings.length - 1;
        cattleBrandToOwner[brandId] = msg.sender;
        ownerCattleBrandCount[msg.sender]++;
        emit NewCattleBrand(brandId, _registrationImage, _brandDetails, _county, _ownerDetails);
    }

    function _generageImageHash(uint _registrationImage) private returns (uint) {
        randImageId = uint(keccak256(abi.encodePacked(_registrationImage)));
        return randImageId;
    }

    function _verifyCattleBrand() private {

    }

    function _importCattleBrand() private {

    }
    
}