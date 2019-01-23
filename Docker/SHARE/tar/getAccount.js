const Eos = require('eosjs')

const config = {
	httpEndpoint:'http://127.0.0.1:8888'
};

Eos(config).getAccount('ybytqe', (error,AccountInfo)=>{
    if(error){
        console.error(error);
    }
    console.log(AccountInfo);
});

