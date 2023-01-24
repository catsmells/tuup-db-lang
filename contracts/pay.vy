@version ^0.3.7
event Pay:
    sender: indexed(address)
    amount: uint256
@external
@payable
def pay():
    log Pay(msg.sender, msg.value)
@external
@view
def getBalance() -> uint256:
    return self.balance
owner: public(address)
@external
@payable
def pay():
    assert msg.value > 0, "msg.value = 0"
    self.owner = msg.sender
