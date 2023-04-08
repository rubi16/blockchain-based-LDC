pragma solidity ^0.8.18;

contract plant_Detail{

// structure for storing the detail
    struct plant_info{
        uint id;
        uint capacity;
        uint costperunit;
    }

// var for stroring all data
    plant_info public setinfo;

//array for creating list of var
    plant_info[] public infolist;




    function setStruct(uint _id, uint _capacity, uint _costperunit) public{

        setinfo.id= _id;
        setinfo.capacity= _capacity;
        setinfo.costperunit= _costperunit;
    }

      function getStruct() public view returns(uint, uint, uint){
        return(setinfo.id, setinfo.capacity, setinfo.costperunit);
    }


//fuction for creating list of all plants info
    function setlist(uint _id, uint _capacity, uint _costperunit) public{

     plant_info memory tempvar = plant_info({
         id: _id,
         capacity: _capacity,
        costperunit: _costperunit
     });

    infolist.push(tempvar);

    }

  
}
