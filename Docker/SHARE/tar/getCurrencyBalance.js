const Eos = require('eosjs')

const config = {
    httpEndpoint:'https://jungle.eoscanada.com',
    keyProvider:['5JDoY1wFPHQmHurtQcGah3J13wrygRytGDodUQBrotmdwoFHmsF']
};

Eos(config).getCurrencyBalance('eosio.token','kirhatester3','EOS', (error,result)=>{
    if(error){
        console.error(error);
    }
    console.log(result);
});

