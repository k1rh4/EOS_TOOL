const Eos = require('eosjs')

const config = {
    httpEndpoint:'https://jungle.eoscanada.com',
    chainId:'e70aaab8997e1dfce58fbfac80cbbb8fecec7b99cf982a9444273cbc64c41473',
    keyProvider:['5JDoY1wFPHQmHurtQcGah3J13wrygRytGDodUQBrotmdwoFHmsF']
};


/*
Eos(config).transaction('eosio.token', (coin)=> {
    coin.transfer('kirhatester3', 'kirhatester2', '1.0000 EOS', 'transaction2');
}).then(console.log).catch(console.error);
*/

Eos(config).transaction(
    {
    actions: [{
      account: 'eosio.token',
      name: 'transfer',
      authorization: [{
                  actor: 'kirhatester3',
                  permission: 'active',
                }],
      data: {
                  from: 'kirhatester3',
                  to: 'kirhatester2',
                  quantity: '1.0000 EOS',
                  memo: 'test transaction',
                },
    }]
    }
).then(console.log).catch(console.error);


