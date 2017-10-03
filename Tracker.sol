pragma solidity ^0.4.0;
contract VerifyHeader {

    struct Header2 {
        bytes32 parenthash;
        bytes32 unclehash;
        address coinbase;
        bytes32 root;
        bytes32 txhash;
        bytes32 receipthash;
        bytes32 bloom;
        uint difficulty;
        uint number;
        uint gaslimit;
        uint gasused;
        uint timestamp;
        bytes32 mixdigest;
        uint nonce;
    }
    
    
    struct signature{
        address p;
        bytes32 hash;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }
    
    struct HeaderConstants{
        uint64 epochlength;
        uint64 blockPeriod;
        int extraVanity;
        int extraSeal;
        uint nonceAuthVote;
        uint nonceDropVote;
        bytes32 unclehash;
        uint diffInTurnSignatures;
        uint diffNoTurnSignatures;
    }
    
   
    
    Header2 [] public blockheader;
    /*signature [] public blocksignature;*/
    /*address  private _addressp; */

    function checkheader() 
    public returns(uint) {
        if (blockheader.length >= 508){
         return blockheader.length;
        }
    }
    
    /* Calculate AuthoritySignature hash for the sealer account address */
     function accounthash(address p) 
    public returns (bytes32) {    
         return keccak256(p);
    }
    conversion to 32 bytes :)
    */
    
    /* Calculate ECPublic Key of sealer's account hash */
  

     /* Verify Signature hash for the sealer account address */
    function verifysignature(address p, bytes32 hash, uint8 v, bytes32 r, bytes32 s) 
      constant returns(bool) {
        return ecrecover(hash, v, r, s) == p;
    }
    

    /* Check if parent hash matches previous block */
    function checkhash(bytes32 parenthash) 
      constant returns(bool) {
        if (parenthash == 0x0000000000000000000000000000000000000000000000000000000000000000){
      return true;
           }
      }
}
    /* selling EC20 tokens; from ethereum.org 
    
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;

    /* Initializes contract with initial supply tokens to the creator of the contract */
    function MyToken(
        uint256 initialSupply
        ) {
        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) {
        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
        balanceOf[_to] += _value;                           // Add the same to the recipient
    }
}
    
     */

    
    

    
