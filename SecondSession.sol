pragma solidity 0.8.7;

contract SecondSession {

string unverifiedUser = 'User not verified.';
uint unverifiedAge = 0;

   struct usersInitData{
        string name;
        uint age;        
     }
    
    mapping(address => usersInitData) private _userData;

    function dataChangeHandler (string memory _name, uint _age) public {
        require(_age > 10, unverifiedUser);
            _userData[msg.sender].name = _name;
            _userData[msg.sender].age = _age; 
    }


    function showName() public view returns(string memory){
        return _userData[msg.sender].name;
    }

    function showAge() public view returns(uint){
        return _userData[msg.sender].age;
    }

}
