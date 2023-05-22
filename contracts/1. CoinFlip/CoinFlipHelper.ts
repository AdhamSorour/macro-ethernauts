import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  let wins: number = 0;
  while (wins < 10) {
    await attacker.hackContract();
    wins = await victim.consecutiveWins();
  }
};

export default helper;
