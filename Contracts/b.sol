// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import "./c.sol";
/**
 * @title PriceConverter
 * @dev Set & change PriceConverter
 */
contract PriceConverter {
    address public priceFeedAddress;

    function getPrice() public view returns (uint256, uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            priceFeedAddress
        );
        (, int256 price, , , ) = priceFeed.latestRoundData();
        uint256 decimals = priceFeed.decimals();
        return (uint256(price), decimals);
    }

    function convertFromUSD(uint256 amountInUSD) public view returns (uint256) {
        (uint256 price, uint256 decimals) = getPrice();
        uint256 convertedPrice = (amountInUSD * 10**decimals) / price;
        return convertedPrice;
    }
}