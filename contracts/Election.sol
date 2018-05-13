pragma solidity ^0.4.2;

contract Election {
    //candidate model
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //store 

    // fetch candidates
    mapping(uint => Candidate) public candidates;

    //read

    uint public count;

    function add(string _name) private {
        count++;
        candidates[count] = Candidate(count, _name, 0);
    }
    
    function Election() public {
        add("Candidate 1");
        add("Candidate 2");
    }
}
