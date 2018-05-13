var Election = artifacts.require("./Election.sol")

contract("Election",function(accounts){    
    it("init with two candidates",function(){
        return Election.deployed().then(function(instance){
            return instance.count();
        }).then(function(count){
            assert.equal(count,2)
        })
    })
});