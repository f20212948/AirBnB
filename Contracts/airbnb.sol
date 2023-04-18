// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract DecentralizedAirBNB{
    address public admin;
    uint256 public listing_fee;
    uint256 private listing_id;

    struct Propery_intfo{
        //propId,Owner,propName,city,price per day,description
        uint256 poprId;
        address Owner;
        string propName;
        string city;
        uint256 pricePerDay;// auto
    }
}