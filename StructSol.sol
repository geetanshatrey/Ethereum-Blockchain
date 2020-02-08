pragma solidity ^0.5.1;

contract StructSol{
    //Person[] public people;
    uint256 public peopleCount=0;
    mapping(uint => Person) public people;


    struct Person{
        uint id;
        string f_name;
        string l_name;
    }

    function addPerson(string memory first,string memory last) public {
        //people.push(Person(first,last));
        peopleCount+=1;
        people[peopleCount]= Person(peopleCount,first,last);

    }
}
