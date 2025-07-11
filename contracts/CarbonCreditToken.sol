
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarbonCreditToken {
    string public name = "CarbonCredit";
    string public symbol = "CO2C";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    address public owner;
    mapping(address => uint256) public balanceOf;

    struct CarbonProject {
        string projectName;
        string country;
        uint256 yearIssued;
        string verifier;
    }

    mapping(uint256 => CarbonProject) public projectData;
    uint256 public nextProjectId = 1;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event CarbonOffset(address indexed user, uint256 amount, uint256 projectId);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Mint tín chỉ carbon mới
    function mint(
        address to,
        uint256 amount,
        string memory name_,
        string memory country,
        uint256 year,
        string memory verifier
    ) public onlyOwner {
        uint256 id = nextProjectId;
        projectData[id] = CarbonProject(name_, country, year, verifier);
        nextProjectId++;

        balanceOf[to] += amount;
        totalSupply += amount;
        emit Transfer(address(0), to, amount);
    }

    // Burn tín chỉ carbon
    function burn(uint256 amount, uint256 projectId) public {
        require(balanceOf[msg.sender] >= amount, "Not enough tokens");
        require(projectId < nextProjectId, "Invalid project ID");

        balanceOf[msg.sender] -= amount;
        totalSupply -= amount;
        emit CarbonOffset(msg.sender, amount, projectId);
    }

    // Truy xuất thông tin dự án carbon
    function getProjectInfo(uint256 id) public view returns (
        string memory projectName,
        string memory country,
        uint256 yearIssued,
        string memory verifier
    ) {
        CarbonProject memory p = projectData[id];
        return (p.projectName, p.country, p.yearIssued, p.verifier);
    }
}
