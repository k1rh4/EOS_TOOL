const Eos = require('eosjs')

const config = {
	httpEndpoint:'http://127.0.0.1:8888'
};

Eos(config).getInfo((error,info)=>{
    if(error){
        console.error(error);
    }
    console.log(info);
});

