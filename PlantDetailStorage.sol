pragma solidity ^0.8.18;

contract plant_Detail{

// structure for storing the detail
    struct plant_info{
        uint id;
        uint capacity;
    }

// var for stroring all data
    plant_info public setinfo;

//array for creating list of var
    plant_info[] public infolist;

    function setStruct(uint _id, uint _capacity) public{

        setinfo.id= _id;
        setinfo.capacity= _capacity;
    }

//fuction for creating list of all plants info
    function setlist(uint _id, uint _capacity) public{

     plant_info memory tempvar = plant_info({
         id: _id,
         capacity: _capacity
     });

    infolist.push(tempvar);

    }

    function getStruct() public view returns(uint, uint){
        return(setinfo.id, setinfo.capacity);
    }

}
