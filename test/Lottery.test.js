const Token = artifacts.require("Lottery");

contract("Lottery contract", async ([account_one, account_two]) => {

  let contract;
  before(async () => {
    contract = await Token.deployed()
  })

  it("deploys contract", async () => {
    assert.ok(contract);
  });

  it('deployer is manager', async () => {
    expect( await contract.manager() ).to.be.eq(account_one);
  })

  it("allows one account to enter", async () => {
    await contract.enter({
        from: account_two,
        value: web3.utils.toWei('0.02', 'ether')
      })

    const players = await contract.getPlayers();
    assert.equal(account_two, players[0]);
  });

  it('Only manager can call pickWinner', async () => {
    try {
        await contract.pickWinner({from: account_two})
        assert(false)
    } catch (error) {
        assert(error)
    }
});

});
