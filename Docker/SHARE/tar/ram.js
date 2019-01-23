const Eos = require('eosjs')

const config = {
    httpEndpoint:'https://jungle.eoscanada.com',
    chainId:'e70aaab8997e1dfce58fbfac80cbbb8fecec7b99cf982a9444273cbc64c41473',
    keyProvider:['5JDoY1wFPHQmHurtQcGah3J13wrygRytGDodUQBrotmdwoFHmsF']
};
/*
Eos(config).transaction(tr => {
    tr.buyrambytes({
        payer:'kirhatester3',
        receiver: 'kirhatester3',
        bytes: 8192,
    });
}).then(console.log).catch(console.error);
*/
Eos(config).transaction(tr => {
    tr.buyram({
        payer:'kirhatester3',
        receiver: 'kirhatester3',
        quant: '1.0000 EOS',
    });
}).then(console.log).catch(console.error);

