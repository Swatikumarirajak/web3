// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Transactions{
    uint256 transactionCount;

    event Transfer(address from , address recevier, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct{
        address sender;
        address recevier;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

   TransferStruct[] transactions;

   function addToBlockchain (address payable recevier, uint amount, string memory message, string memory keyword)public{
          transactionCount += 1;
          transactions.push( TransferStruct(msg.sender, recevier, amount, message, block.timestamp, keyword));
          emit Transfer(msg.sender, recevier, amount, message, block.timestamp, keyword);
   }

   function getAllTransaction ()public view returns(TransferStruct[] memory){
      return transactions;
   }

   function getTransactionCount ()public view returns(uint256){
      return transactionCount;
   }
}
