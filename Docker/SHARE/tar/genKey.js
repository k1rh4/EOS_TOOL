const Eos = require('eosjs')
const ecc = Eos.modules.ecc;

ecc.randomKey().then(privateKey=>
    {
        console.log('privatekey: ' , privateKey);
        const publicKey = ecc.privateToPublic(privateKey);
        console.log('publicKey:',publicKey);

    });




