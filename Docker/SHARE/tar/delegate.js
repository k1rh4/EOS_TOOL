const Eos = require('eosjs')

const config = {
    httpEndpoint:'https://jungle.eoscanada.com',
    chainId:'e70aaab8997e1dfce58fbfac80cbbb8fecec7b99cf982a9444273cbc64c41473',
    keyProvider:['5JDoY1wFPHQmHurtQcGah3J13wrygRytGDodUQBrotmdwoFHmsF']
};

Eos(config).transaction(tr => {
    tr.delegatebw({
    from:'kirhatester3',
    receiver:'kirhatester2',
    stake_cpu_quantity:'1.0000 EOS',
    stake_net_quantity: '1.0000 EOS',
    transfer:0,
    });
}).then(console.log).catch(console.error);



