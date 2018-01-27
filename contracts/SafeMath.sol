/*
 *  NoCashValue Coin (ERC20-Token)
 *  SafeMath library for arithmetic operations with safety checks
 *  Author: NoCashValue DevTeam (hello@nocashvaluecoin.co)
 *
 *  @link https://github.com/NoCashValueCoin
 *  @version v0.0.1
 *  @license MIT
 */

pragma solidity 0.4.18;


library SafeMath {

    /*
    * Safe addition operation.
    * @internal
    */
    function add(uint _base, uint _value)
        internal
        pure
        returns (uint _ret) {
            _ret = _base + _value;
            assert(_ret >= _base);
        }

    /*
    * Safe subtraction operation.
    * @internal
    */
    function sub(uint _base, uint _value)
        internal
        pure
        returns (uint) {
            assert(_value <= _base);
            return _base - _value;
        }

    /*
    * Safe multiplication operation.
    * @internal
    */
    function mul(uint _base, uint _value)
        internal
        pure
        returns (uint _ret) {
            _ret = _base * _value;
            assert(0 == _base || _ret / _base == _value);
        }

    /*
    * Safe division operation.
    * @internal
    */
    function div(uint _base, uint _value)
        internal
        pure
        returns (uint) {
            assert(_value > 0 && (_base % _value) == 0);
            return _base / _value;
        }

}
