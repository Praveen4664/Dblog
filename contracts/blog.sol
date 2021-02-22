pragma solidity >=0.4.0 <=0.7.4;
contract blog{
struct blogfeed{
address publisher;
string blogdesc;
}
mapping(uint => blogfeed) public blogfeeds;
uint public blogCount;
function addblog(string memory blogdesc) public {
blogCount++;
blogfeeds[blogCount].publisher = msg.sender;
blogfeeds[blogCount].blogdesc = blogdesc;
}
}