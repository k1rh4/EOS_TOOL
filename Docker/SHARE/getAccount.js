const Eos = require('eosjs')

const config = {
    //httpEndpoint:'https://jungle.eoscanada.com'
    httpEndpoint:'http://127.0.0.1:8888'
};

Eos(config).getAccount('zguufk', (error,AccountInfo)=>{
    if(error){
        console.error(error);
    }
    console.log(AccountInfo);
});

