pragma solidity ^0.4.0;
import "./Tracker.sol";
contract TrackBalance {
 
    address private _trustedaddress;

    function ProofofAuthorityTracker(address p) {
        _trustedaddress= p;
    }
    
    function processTransaction(uint256 _value) returns (int256) {
        log0("processTransaction called");

        // only allow trusted address
        if (msg.sender == _trustedaddress) {
            log1("processTransaction address _to, ", bytes32(_value));
            return 1;
        }

        log0("processTransaction failed");
        return 0;
    }
}
